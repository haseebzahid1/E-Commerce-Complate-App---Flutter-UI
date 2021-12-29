import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/details/components/widget/description_widget.dart';
import '../../../modal/product.dart';
import '../../../size_mediaquery.dart';
import 'add_cart_button.dart';
import 'detail_small_color_btn.dart';

class ProductDescription extends StatelessWidget {
 final  Product detailProduct;
 void Function()? onTap;
   ProductDescription({Key? key, required this.detailProduct, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),)
      ),
      child: Column(
        children: [
          DescriptionContainer(detailProduct: detailProduct,),
          ColorDots(detailProduct:detailProduct),
        ],
      ),
    );
  }
}
