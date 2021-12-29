import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_up_login_form/screen/home/components/section_title.dart';
import 'package:sign_up_login_form/size_mediaquery.dart';
import 'package:sign_up_login_form/style.dart';

import '../../../modal/categories.dart';
import '../../../modal/product.dart';
import '../../../modal/special_Product.dart';
import 'product_card.dart';
import 'catagories_item.dart';
import 'catagories_list.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(10),),
              HomeHeader(),
              DiscountBanner(),
              CatagoriesPage(),
              // SizedBox(height: getProportionateScreenHeight(5),),
              SectionTitle(title: "Special for you",subTitle: "SeeMore",onTab: (){},),
              SizedBox(height: getProportionateScreenHeight(20),),
              CategoriesList(),
              SizedBox(height: getProportionateScreenHeight(10),),
              SectionTitle(title: "Popular Product",subTitle: "SeeMore",onTab: (){},),
              SizedBox(height: getProportionateScreenHeight(10),),
              ProductCard(),
            ],
          ),
        )
    );
  }
}

