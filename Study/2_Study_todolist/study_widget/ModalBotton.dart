import 'package:flutter/material.dart';

class ModalBotton extends StatelessWidget {
  ModalBotton({
    super.key,
    required this.addTask,
  });

//Cach1: sd on change - Tao bien luu tru input dau vao
  String textValue = '';
  // void _handleOnclick() {
  //   print(textValue);
  // }

  // Cach2: tao controller
  final Function addTask;
  TextEditingController controller = TextEditingController();
  void _handleOnclick(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context)
          .viewInsets, // giai quyet van de bi an khi hien thi keyboad
      child: SingleChildScrollView(
        // giai quyet van de di chuyen scrollView
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        // height: 200,
        // color: Colors.pink[100],
        child: Column(
          children: [
            TextField(
              //onChanged gan gia tri input vao bien textValue
              // onChanged: (text) {
              //   textValue = text;
              // },
              // gan gia tri
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Text',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              
              child: ElevatedButton(
                onPressed: () => _handleOnclick(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[900],),
                child:  Text('Add Task', style: TextStyle(color: Colors.pink[50]),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
