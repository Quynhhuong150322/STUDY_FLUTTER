//==================================================================11 Bai Tap Giao Dien=============

// B1: Khai bao import thu vien
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// B2: Main
void main() {
// B3: Khoi dong App
  runApp(const MaterialApp(
    // B4: Su dung thnag phan de xay dung giao dien nguoi dung
    // SafeArea để các phần tu k bi de len navBar
    // Scaffold khung man hinh
    home: MyApp(),
    debugShowCheckedModeBanner: false, // tat bang ron debug
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Flutter', Alignment.bottomRight),
                  boxMethod('ReactJS', Alignment.bottomLeft),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('ReactJS', Alignment.topRight),
                  boxMethod('ReactJS', Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(
              child: boxMethod('Hello Flutter', Alignment.center,
                  true)), // tạo biến k bat buoc de
        ],
      ),
    );
  }

  Container boxMethod(String name, Alignment direction,
      [bool boxRadius = false]) {
    return Container(
      alignment: direction,
      decoration: BoxDecoration(
          color: boxRadius ? Colors.amber[300] : Colors.amber[100],
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)),
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(fontSize: 24, color: Colors.pink),
      ),
    );
  }
}
