import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/home/components/searchField.dart';
import 'package:sign_up_login_form/size_mediaquery.dart';
import 'package:sign_up_login_form/style.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_btn_with_counter.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20),),
              HomeHeader(),
              SizedBox(height: getProportionateScreenHeight(20),),
              DiscountBanner(),
            ],
          ),
        )
    );
  }
}

