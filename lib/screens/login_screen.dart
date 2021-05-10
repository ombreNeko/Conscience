import 'package:flutter/material.dart';
import 'package:conscience/Components/auth_card.dart';

class LoginScreen extends StatelessWidget {
  static final id = 'loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AuthCard(
          type: id,
        ),
      ),
    );
  }
}
