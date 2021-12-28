import 'package:flutter/material.dart';

import 'components/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register Account"),
      ),
      body: RegisterBodyScreen(),
    );
  }
}
