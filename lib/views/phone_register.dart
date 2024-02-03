import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:software_project/views/login_page.dart';
import 'package:software_project/views/resgister_page.dart';
import 'package:software_project/views/Navigaton.dart';
import 'package:software_project/reusable%20com/next_buttom.dart';
import 'package:software_project/views/pofile.dart';
import 'package:software_project/reusable%20com/register_buttom.dart';

class Register extends StatelessWidget {
   Register({super.key});
   String? username;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
   Future<void> handleSignIn() async {
     try {
       // Log in with Facebook
       final LoginResult result = await FacebookAuth.instance.login();

       // Check if the login was successful
       if (result.status == LoginStatus.success) {
         // Get the user's information
         final AccessToken accessToken = result.accessToken!;
         final FacebookUserProfile user = (await FacebookAuth.instance.getUserData()) as FacebookUserProfile;

         print("Signed in with Facebook: ${user.name}");

         // You can navigate to the home screen or perform other actions here
       } else {
         // Handle login error
         print("Facebook login failed: ${result.message}");
       }
     } catch (error) {
       print("Error during Facebook sign in: $error");
     }
   }
  Future<User?> _handleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? user = authResult.user;

      print("Signed in: ${user!.displayName}");

      return user;
    } catch (error) {
      print("Error during Google sign in: $error");
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Register',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Enter your mobile phone',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.phone),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                    Navigator.pushNamed(context, LoginPage.id);
                },
                  child: const Next(text: 'Next')),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  const Text(
                    ' or ',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 3,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ],
              ),
              GestureDetector(
                onTap: ()async{
                  User? user = await _handleSignIn();
                  print('ppppppppppppppppppppppppp$user');
                username=  user!.displayName;
                print('ppppppppppppppppppppppppp$user');
                  Navigator.pushNamed(context, Profile.id,
                      arguments: username);
                },
                child: Register_buttom(
                    icon:
                        'https://icons-for-free.com/iconfiles/png/512/google+logo+search+service+suits+icon-1320183415623599433.png',
                    text: 'Google'),
              ),
              GestureDetector(
                onTap: () async
                {
                  await handleSignIn();
                },
                child: Register_buttom(
                    icon:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMbtlyq97NuXNSr8TYedMAi63b00w2-i3ZOA&usqp=CAU',
                    text: '  X  '),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: Register_buttom(
                    icon:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCkQk7Ah0Q853vBq4XqX3xCK_YzQHbB-5F5w&usqp=CAU',
                    text: 'Email'),
              ),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  const Text(
                    ' or ',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 3,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterPage()));
                    },
                    child: Register_buttom(
                        icon:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCkQk7Ah0Q853vBq4XqX3xCK_YzQHbB-5F5w&usqp=CAU',
                        text: 'Register')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

