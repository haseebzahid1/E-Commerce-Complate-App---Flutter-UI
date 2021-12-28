import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/register_account/components/register_inputfield_form.dart';
import '../../../size_mediaquery.dart';
import '../../form/components/social_icon.dart';



class RegisterBodyScreen extends StatelessWidget {
  const RegisterBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text("Register Account",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.bold,
                  ) ,),
                const Text("Complete out details or continne \nsocial media",textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight! * 0.06,),
                RegisterInputField(),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(svgImage: 'assets/icons/google-icon.svg',onTap: (){},),
                    SocialIcon(svgImage: 'assets/icons/facebook-2.svg',onTap: (){},),
                    SocialIcon(svgImage: 'assets/icons/twitter.svg',onTap: (){},),
                  ],
                ),  /// social icons
                SizedBox(height: 5,),
                SizedBox(height: getProportionateScreenHeight(20),),
                Text(
                  "By continuing yur confirm that you adreee \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

