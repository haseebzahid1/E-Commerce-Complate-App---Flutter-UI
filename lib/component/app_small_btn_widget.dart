import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../../modal/product.dart';
import '../../../size_mediaquery.dart';



class AppSmallButtonWidget extends StatelessWidget {
  final IconData icon;
  void Function()? onTab;
  bool showShadow;
  Widget? child;
  final Product demoProduct;
  AppSmallButtonWidget({Key? key,this.child,required this.icon,  this.showShadow =false,this.onTab, required this.demoProduct, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTab,
            child: Container(
              height: getProportionateScreenWidth(22),
              width: getProportionateScreenWidth(22),
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
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
