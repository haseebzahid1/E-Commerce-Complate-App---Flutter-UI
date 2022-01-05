import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/splash/components/splash_content.dart';

import '../../../component/default_button.dart';
import '../../main_page.dart';
import '../../../modal/splash_model.dart';
import '../../../size_mediaquery.dart';
import '../../../style.dart';
import '../../Welcome-back/SignInScreen.dart';
import '../../complete_profile/profile_screen.dart';
import '../../home/home_screen.dart';
import '../../profile/profile_screen.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.58,
              child: PageView.builder(
                onPageChanged: (int value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  SplashData splashItem = splashData[index];
                  return SplashContent(
                    image: splashItem.iamge,
                    text: splashItem.subtitle,
                  );
                },
              ),
            ),
            Container(
              height: size.height * 0.38,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length, (index) {
                          return AnimatedContainer(
                            duration: kAnimationDuration,
                            margin: EdgeInsets.only(right: 5),
                            width: currentPage == index ? 20 : 6,
                            height: 6,
                            decoration: BoxDecoration(
                                color: currentPage == index
                                    ? kPrimaryColor
                                    : Color(0xffd8d8d8),
                                borderRadius: BorderRadius.circular(8)
                            ),
                          );
                          // return buildDot( index: index);
                        })
                    ),
                    Spacer(flex: 1,),
                    DefaultButton(text: 'Continue',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (
                            context) => SignInScreen()));
                      },),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}