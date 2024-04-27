// B1: Khai bao imporvien
import 'package:flutter/material.dart';
import 'modal/items.dart';

import 'study_widget/ModalBotton.dart';
import 'study_widget/card_widget.dart';

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

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [
    DataItems(id: '1', name: 'Tap the duc'),
    DataItems(id: '2', name: 'Hoc Flutter'),
    DataItems(id: '3', name: 'Hoc Tieng Nhat'),
    DataItems(id: '4', name: 'Hoc Tieng Anh'),
    DataItems(id: '5', name: 'Hoc o nha'),
    DataItems(id: '6', name: 'Hoc o truong'),
  ];

  // HAM ADD TASK
  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  // HAM XOA TASK
  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ToDoList',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 248, 11, 137)),
          ),
        ),
        backgroundColor: Colors.pink[100],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(31),
        child: Column(
          children: items
              .map((item) => CardBody(
                    index: items.indexOf(item),
                    item: item,
                    handleDelete: _handleDeleteTask,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ), // border 2 goc ben tren cua container
              isScrollControlled:
                  true, // gia quyet van de hien thi khi de dien thoai nam ngang khi keyboad xuat hien
              context: context,
              builder: (BuildContext context) {
                return ModalBotton(addTask: _handleAddTask);
              });
        },
        child: Icon(Icons.add, size: 40, color: Colors.pink[700]),
      ),
    );
  }
}
