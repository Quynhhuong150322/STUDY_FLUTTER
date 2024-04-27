import 'package:flutter/cupertino.dart';

import '../../../apps/utills/const.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key, required this.nameIcon});
  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        AssetCustom.getlinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
