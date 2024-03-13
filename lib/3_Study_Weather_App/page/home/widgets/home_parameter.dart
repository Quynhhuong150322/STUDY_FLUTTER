import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeParameter extends StatelessWidget {
  const HomeParameter({super.key});

  @override
  Widget build(BuildContext context) {
    // kích thước màn hình
    Size size = MediaQuery.sizeOf(context);
    // tính tỉ lệ màn hình
    double iconW = 49;
    double ScreenW = size.width;
    double iconPercentage = (iconW / ScreenW) * 100;

    return Container(
      padding: const EdgeInsets.only(top: 41),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ParameterMethod(iconPercentage, ScreenW,
              'assets/images/icons/Vector.png', '5km/h'),
          ParameterMethod(iconPercentage, ScreenW,
              'assets/images/icons/iconHumidity.png', '30%'),
        ],
      ),
    );
  }

  Column ParameterMethod(
      double iconPercentage, double ScreenW, String path, String textTT) {
    return Column(
      children: [
        Image.asset(
          path,
          width: (iconPercentage / 100) * ScreenW,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textTT,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
