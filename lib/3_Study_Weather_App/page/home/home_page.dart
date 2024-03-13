import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_drive/3_Study_Weather_App/page/home/widgets/home_weather_icon.dart';

import 'widgets/home_localtion_icon.dart';
import 'widgets/home_location.dart';
import 'widgets/home_parameter.dart';
import 'widgets/home_temperature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeWeatherIcon(),
            HomeTemperature(),
            HomeLocaltion(),
            HomeParameter(),
          ],
        ),
      ),
    );
  }
}
