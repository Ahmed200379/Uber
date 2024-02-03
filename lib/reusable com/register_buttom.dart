import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register_buttom extends StatelessWidget {
   Register_buttom({super.key, required this.icon,required this.text});
  @override
   final String icon;
   final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18,bottom: 18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400],
              borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.network(
                icon,
                width: 30,
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(text,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),

          ],
        )
      ),
    );
  }
}
