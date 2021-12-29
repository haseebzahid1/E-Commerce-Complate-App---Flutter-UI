import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../size_mediaquery.dart';

class AddCartButton extends StatelessWidget {
  void Function()? onTap;
  AddCartButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      padding:  EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),)
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(
        left: SizeConfig.screenWidth! * 0.15,
        right: SizeConfig.screenWidth! * 0.15,
      ),
            child: DefaultButton(text: 'Add to Cart',
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}
