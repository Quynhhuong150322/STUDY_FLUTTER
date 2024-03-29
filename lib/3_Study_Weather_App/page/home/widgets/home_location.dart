import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'home_localtion_icon.dart';

class HomeLocaltion extends StatelessWidget {
  const HomeLocaltion({super.key});

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('yyyy-MM-dd');
    return Column(
      children: [
        Row(
          // padding: const EdgeInsets.only(top: 17),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HomeLocaltionIcon(),
            textMethod('HO CHI MINH City'),
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        textMethod(df.format(DateTime.now())),
      ],
    );
  }

  Text textMethod(String titleT) {
    return Text(
      titleT,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }
}
