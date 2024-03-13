import 'package:flutter/cupertino.dart';

class HomeLocaltionIcon extends StatelessWidget {
  const HomeLocaltionIcon({super.key});

  @override
  Widget build(BuildContext context) {
    // kích thước màn hình
    Size size = MediaQuery.sizeOf(context);
    // tính tỉ lệ màn hình
    double iconW = 34;
    double ScreenW = size.width;
    double iconPercentage = (iconW / ScreenW) * 100;

    return Container(
      width: (iconPercentage / 100) * ScreenW,
      padding: const EdgeInsets.only(right: 11),
      child: Image.asset(
        'assets/images/icons/localtion.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
