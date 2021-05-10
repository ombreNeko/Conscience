import 'package:conscience/screens/community_wall_screen.dart';
import 'package:conscience/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCard extends StatelessWidget {
  final String type;
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  AuthCard({this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 400,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kMutedGreyColor,
                      hintText: 'Email Id',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kMutedGreyColor,
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Forgot Password?',
                      style: kCaptionTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (type == RegistrationScreen.id) {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, CommunityWallScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  }
                },
                child: type == RegistrationScreen.id
                    ? Text('Sign Up')
                    : Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(20),
                  textStyle: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
