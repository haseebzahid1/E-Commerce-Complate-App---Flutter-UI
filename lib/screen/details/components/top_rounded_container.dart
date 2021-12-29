import 'package:flutter/material.dart';

import '../../../modal/product.dart';
import '../../../size_mediaquery.dart';



class CuctomAppButton extends StatelessWidget {
  final IconData icon;
  void Function()? onPressed;
  bool showShadow;
  final Product demoProduct;
  CuctomAppButton({Key? key,   required this.icon,  this.showShadow =false,this.onPressed, required this.demoProduct, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: getProportionateScreenWidth(26),
              width: getProportionateScreenWidth(26),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  if (showShadow)
                    BoxShadow(
                      offset: Offset(0, 6),
                      blurRadius: 10,
                      color: Color(0xFFB0B0B0).withOpacity(0.2),
                    ),
                ],
              ),
              child: InkWell(
                  onTap: onPressed,
                  child: Container(

                    decoration: BoxDecoration(
                        shape: BoxShape.circle
                    ),
                    child: Center(child: Icon(icon,color: Colors.black,)),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
