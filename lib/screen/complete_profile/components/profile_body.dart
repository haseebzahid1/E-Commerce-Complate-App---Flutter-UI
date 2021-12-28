import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/complete_profile/components/profile_input_form.dart';

import '../../../component/constant.dart';
import '../../../size_mediaquery.dart';


class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenHeight!*0.03,),
              Text("Complete Profile",style: headingStyle,),
              const Text("Complete our details or continue \n social media",textAlign: TextAlign.center,
              ),
              SizedBox(height: 26,),
              CompleteProfileForm(),
              SizedBox(height: 33,),
              const Text(
                  "By continuing your confirm that yu agreee \nwith Term and Condition",textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
