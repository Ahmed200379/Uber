import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:software_project/models/map_logic.dart';
class Text_Search extends StatelessWidget {
  const Text_Search({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 12),
      child: Container(height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey[300]
        ),
        child:  TextField(
          onTap: ()async{
          String place=  ShowGoogleAutoComplete(context) as String;
          },
          decoration:  InputDecoration(
            prefixIcon: const Icon(Icons.search,size: 30,),
            border: InputBorder.none,
            fillColor: Colors.grey,
            hintText: text,
          ),
        ),
      ),
    );
  }
}