import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({super.key, required this.item, required this.handleDelete,  required this.index});

  var item;
  var index;
  final Function handleDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: ( index % 2 == 0 ) 
          ? Colors.amber[100] 
          : Colors.pink[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.name,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color:  (index % 2 == 0) ? Colors.amber[900] : Colors.pink[900],
            ),
          ),
          InkWell(
            onTap: () async {
              if (await confirm(
                context,
                title: const Text('Confirm'),
                content: const Text('Would you like to remove?'),
                textOK: const Text('Yes'),
                textCancel: const Text('No'),
              )) {
                handleDelete(item.id);
              }
              return;
            },
            child: Icon(
              Icons.delete_outline,
              size: 20,
              color:  ( index % 2 == 0 ) 
                ? Colors.amber[900] 
                : Colors.pink[900],
            ),
          ),
        ],
      ),
    );
  }
}

class riquired {}
