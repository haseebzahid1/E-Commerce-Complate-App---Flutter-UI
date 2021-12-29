import 'package:flutter/material.dart';
import 'package:sign_up_login_form/modal/product.dart';
import 'package:sign_up_login_form/screen/details/components/product_images.dart';
import 'package:sign_up_login_form/screen/details/components/product_description.dart';



class DetailBody extends StatefulWidget {
  final Product detailProduct;
  const DetailBody({Key? key, required this.detailProduct}) : super(key: key);

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(detailProduct:widget.detailProduct,),
        ProductDescription(detailProduct:widget.detailProduct,onTap: (){},),

      ],
    );
  }
}
