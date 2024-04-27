import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../apps/utills/const.dart';
import '../../../models/weatherModel.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listData});

  final List<WeatherDetail> listData;

  @override
  Widget build(BuildContext context) {
    // print(listData);
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listData[index].dt_txt);
          String formatDay = DateFormat('E').format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);

          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white30,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        createTemp(listData[index].main.temp, size: 30),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          listData[index].weather.main,
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        formatDay,
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        formatTime,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 3,
                  child: Image.asset(
                    AssetCustom.getlinkImg(listData[index].weather.main),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, _) => const SizedBox(
              height: 15,
            ),
        itemCount: 20);
  }
}
