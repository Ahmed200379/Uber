import 'package:flutter/material.dart';
import 'package:software_project/reusable%20com/next_buttom.dart';
import 'package:software_project/views/phone_register.dart';

import '../../constant/constant.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 18,left: 18,right: 18),
        child: Center(
          child:Column(
            children: [
              ubertext,
                Expanded(
                child: Container(
                  height: 10,
                  width:200,
                  child: const Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ-cnO_cn2wYtxYDeBn9RC2AKPtPIoLTsNBl5fjhrG2hkpc8rsil8SU6rFYEdHFX2SiaM&usqp=CAU'),
                  ),
                ),
               ),
               const Expanded(
                 child: Text(
                  'Be save in driving',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                      color: Colors.white
                ),
                  ),
                ),
              GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));;
                  },
                  child: const Next(text: 'Start',))
            ],
          )

      ),
      )
    );
  }
}
