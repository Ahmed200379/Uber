import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  const Next({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,style: const TextStyle(
                    fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              const Icon(Icons.arrow_forward,color: Colors.white,size: 35,)
            ],
          ),
        ),
      ),
    );
  }
}
