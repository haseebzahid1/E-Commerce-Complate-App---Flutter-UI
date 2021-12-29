import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/profile/components/profile_menu.dart';
import 'package:sign_up_login_form/screen/profile/components/proflle_pic.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfilePic(),
            SizedBox(height: 20,),
            ProfileMenu(),
          ]
        ),
      ),
    );
  }
}
