import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class landing_pagedartdart extends StatelessWidget {
  const landing_pagedartdart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
      ],
    ));
  }
}
