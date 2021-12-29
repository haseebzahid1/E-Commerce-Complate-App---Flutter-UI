import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_up_login_form/modal/cart.dart';
import 'package:sign_up_login_form/size_mediaquery.dart';
import 'package:sign_up_login_form/style.dart';

import '../../component/default_button.dart';
import 'component/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("your Cart"),
            Text("${demoCarts.length} Items",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(10),
          horizontal: getProportionateScreenWidth(20),
        ),
        height: 154,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),topRight: Radius.circular(30),
          ),
            boxShadow: [
              BoxShadow(
            offset: Offset(0,-15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.15)
        ),
          ],
        ),
        child: Column(
          children: [
            Row(

              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(30),
                  decoration: BoxDecoration(
                    color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                const SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios,size: 12,color: kTextColor,)
              ],
            ),
                 SizedBox(height: getProportionateScreenHeight(10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 16,color: Colors.black)
                      )
                    ],
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(100),
                  child: DefaultButton(
                    text: 'Chcek Out', onPressed: () {  },
                     height:  getProportionateScreenHeight(46),
                    size: getProportionateScreenWidth(11),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: CartBody(),
    );
  }
}
