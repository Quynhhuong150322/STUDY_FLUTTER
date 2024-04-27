import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/weatherModel.dart';
import 'widgets/detail_body.dart';
import '../../providers/weather_provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        future: context.read<WeatherProvider>().getWeatherDetail(),
        builder: (BuildContext context,
            AsyncSnapshot<List<WeatherDetail>> snapshot) {
          // Kiểm tra trạng thái của snapshot
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<WeatherDetail>? listdata = snapshot.data!;
          if (listdata.isEmpty) {
            return const Center(
              child: Text("No data available"),
            );
          }

          // List<WeatherDetail> listdata = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              centerTitle: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: [
                  const Icon(CupertinoIcons.location),
                  const SizedBox(
                    width: 15,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'HO CHI MINH CITY',
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: const [
                Icon(CupertinoIcons.search),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            body: DetailBody(
              listData: listdata,
            ),
          );
        },
      ),
    );
  }
}
