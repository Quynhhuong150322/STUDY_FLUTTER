import 'package:flutter/material.dart';

const linkAsset = 'assets/images/weathers/';

class AssetCustom {
  static String getlinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

// ignore: non_constant_identifier_names
class Mykey {
  static const String api_token = 'b4c278b359f1465033e5cc0ec9057b4c';
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      Text(
        '0',
        style: TextStyle(
          fontSize: size / 3,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    ],
  );
}
