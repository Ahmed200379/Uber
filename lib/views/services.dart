import 'package:flutter/material.dart';

import '../reusable com/custom_cat.dart';

class Sevices extends StatelessWidget {
  const Sevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Services',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Go to any place',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 20),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCat(image: 'https://img.icons8.com/?size=80&id=CeajqgpI2YHP&format=gif',text: 'Car'),
                      CustomCat(image: 'https://img.icons8.com/?size=80&id=Z3eZDPmpIcb1&format=gif',text: 'Shuttle',),
                      CustomCat(image: 'https://img.icons8.com/?size=80&id=58663&format=png',text: 'Book',),
                      CustomCat(image: 'https://img.icons8.com/?size=80&id=65351&format=png',text: 'Package',),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
