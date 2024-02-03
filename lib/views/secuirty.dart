import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sec extends StatelessWidget {
   Sec({super.key,required this.s});
String s;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text('''$s''')
                ],
              ),
            ),
          ),
    );
  }
}
