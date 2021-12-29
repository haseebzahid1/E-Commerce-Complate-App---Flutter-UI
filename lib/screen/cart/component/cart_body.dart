import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_up_login_form/modal/cart.dart';
import 'package:sign_up_login_form/size_mediaquery.dart';
import 'package:sign_up_login_form/style.dart';

import 'cart_item_card.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(demoCarts[0].product.id.toString()),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffffe6e6)
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg")
                    ],
                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    demoCarts.removeAt(index);
                  });
                },
                child: CartItemcard(cart: demoCarts[index],),
              ),
            ),
          ],
        );
      },),
    );
  }
}


