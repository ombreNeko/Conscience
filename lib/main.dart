import 'package:conscience/screens/create_post_screen.dart';
import 'package:conscience/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'screens/community_wall_screen.dart';
import 'package:provider/provider.dart';
import 'package:conscience/Helpers/community_screen_data.dart';
import 'screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Conscience());
}

class Conscience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommunityScreenData(),
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: Color(0xff6B9685),
          fontFamily: 'Lato',
        ),
        initialRoute: RegistrationScreen.id,
        routes: {
          CommunityWallScreen.id: (context) => CommunityWallScreen(),
          CreatePostScreen.id: (context) => CreatePostScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          LoginScreen.id: (context) => LoginScreen(),
        },
      ),
    );
  }
}
