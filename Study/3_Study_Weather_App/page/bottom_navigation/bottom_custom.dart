import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Detail_page/detail_page.dart';
import '../home/home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: 'Detail')
  ];

  List<Widget> listPage = [
    const HomePage(),
    const DetailPage(),
  ];

  int activePage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // man hinh hien thi full
      extendBody: true,
      body: listPage[activePage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activePage,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xFF1900A5),
          backgroundColor: Colors.white12,
          elevation: 0,
          // xu ly onTap
          onTap: (index) {
            setState(() {
              activePage = index;
            });
          },
          items: listItem),
    );
  }
}
