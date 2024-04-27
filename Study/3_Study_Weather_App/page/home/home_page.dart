import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/weatherModel.dart';
import 'widgets/home_weather_icon.dart';
import '../../providers/weather_provider.dart';

import 'widgets/home_location.dart';
import 'widgets/home_parameter.dart';
import 'widgets/home_temperature.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1d6cf3),
              Color(0xff19D2FE),
            ],
          ),
        ),
        child: FutureBuilder(
            future: context.read<WeatherProvider>().getWeatherCurrent(),
            initialData: null,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // kiem tra snapshot
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData) {
                return Container(
                  child: const Text('no data'),
                );
              }
              WeatherModel data = snapshot.data as WeatherModel;
              print(data.weather[0].main);

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeWeatherIcon(
                    nameIcon: data.weather[0].main,
                  ),
                  HomeTemperature(
                    temp: data.main.temp,
                  ),
                  HomeLocaltion(
                    nameLocation: data.name,
                  ),
                  HomeParameter(
                    speed: data.wind.speed,
                    humidity: data.main.humidity,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
