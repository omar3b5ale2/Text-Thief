import 'package:flutter/material.dart';

import '../widgets/Body/body_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLogin(),
      resizeToAvoidBottomInset: false,
    );
  }
}
