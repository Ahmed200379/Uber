import 'package:flutter/material.dart';
import 'package:software_project/views/maps.dart';
class CustomCat extends StatelessWidget {
   CustomCat({super.key,required this.image,required this.text});
String image;
String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: GestureDetector(
        onTap: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMaps()));
        },
        child: Column(
          children: [
            Container(
             height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(child: Image.network(image,)),
            ),
            Text(text,style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
