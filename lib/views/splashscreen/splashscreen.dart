import 'package:flutter/material.dart';
import 'package:software_project/views/phone_register.dart';
import '../Navigaton.dart';
import '../onboarding/onboarding.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool flag =true;
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        ()
    {

      Navigator.push(context, MaterialPageRoute(builder: (context){
        if(flag==true) {
          flag = false;
          return const OnBoarding();
        }
        else {
          return Register();
        }
      }));

    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Uber',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(

            )
          ],
        ),
      ),
    );
  }
}
