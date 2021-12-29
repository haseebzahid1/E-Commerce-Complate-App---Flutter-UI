import 'package:flutter/material.dart';

import '../../../modal/cart.dart';
import '../../../size_mediaquery.dart';
import '../../../style.dart';


class CartItemcard extends StatelessWidget {
  final Cart cart;
  const CartItemcard({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getProportionateScreenWidth(57),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffffe6e6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${cart.product.title}",style: TextStyle(
                fontSize: 16,color: Colors.black,
              ),maxLines: 2,),
              SizedBox(height: 10,),
              Text.rich(
                TextSpan(
                    text: "\$${cart.product.price}",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: "x${cart.numOfItem}",
                        style: TextStyle(color: kTextColor),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
