import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:software_project/views/pofile.dart';
import 'package:software_project/views/splashscreen/splashscreen.dart';
import 'firebase_options.dart';
import '../views/login_page.dart';
import '../views/resgister_page.dart';
import '../views/Navigaton.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        NavigationPage.id: (context) => NavigationPage(),
        Profile.id: (context) => Profile()
      },
    //  initialRoute: LoginPage.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const SplashScreen(),
    );
  }
}