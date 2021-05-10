import 'package:conscience/constants.dart';
import 'package:flutter/material.dart';
import 'package:conscience/Components/auth_card.dart';

class RegistrationScreen extends StatelessWidget {
  static final id = 'registrationScreen';
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
