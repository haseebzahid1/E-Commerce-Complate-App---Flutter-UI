import 'package:flutter/material.dart';

import '../../../size_mediaquery.dart';
import '../../../style.dart';


class IconBtnWithCounter extends StatelessWidget {
  int? numOfItems;
  void Function()? onTap;
  final IconData icon;
  IconBtnWithCounter({Key? key,
    this.numOfItems=0,
    required this.icon,
    this.onTap
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: getProportionateScreenWidth(23),
            width: getProportionateScreenWidth(23),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),
          if(numOfItems!=0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(11),
                width: getProportionateScreenWidth(11),
                decoration: BoxDecoration(
                  color: Color(0xffff4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5,color: Colors.white),
                ),
                child:  Center(
                  child: Text("${numOfItems}",
                    style: const TextStyle(
                      height: 1, fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
