import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/home/components/searchField.dart';
import '../../../size_mediaquery.dart';
import '../../cart/cart_screen.dart';
import 'icon_btn_with_counter.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SearchField(),
          SearchField(),
          IconBtnWithCounter(icon: Icons.shopping_cart,
            onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
            },
          ),
          IconBtnWithCounter(icon: Icons.notifications_none,numOfItems: 3,),
        ],
      ),
    );
  }
}
