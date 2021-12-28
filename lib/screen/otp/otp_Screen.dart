import 'package:flutter/material.dart';

import 'components/otp_body_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OTP Verificaiton"),
      ),
      body: OtpBodyScreen(),
    );
  }
}
