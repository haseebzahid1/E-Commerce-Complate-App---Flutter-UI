import 'package:flutter/material.dart';
import 'package:sign_up_login_form/modal/product.dart';

import '../../../size_mediaquery.dart';
import '../../../style.dart';

class ProductImages extends StatefulWidget {
  final Product detailProduct;
  const ProductImages({Key? key, required this.detailProduct, }) : super(key: key);


  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: getProportionateScreenWidth(90),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.detailProduct.images[selectedImage]),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          height: getProportionateScreenWidth(38),
          child: ListView.builder(
            itemCount:widget.detailProduct.images.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index){
              return  GestureDetector(
                onTap: (){
                  setState(() {
                    selectedImage = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
                  padding: EdgeInsets.all(getProportionateScreenWidth(4)),
                  width: getProportionateScreenWidth(38),
                  height: getProportionateScreenWidth(38),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color:selectedImage==index? kPrimaryColor:Colors.transparent
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    widget.detailProduct.images[index],
                    width: 40,),
                ),
              );
            },),
        ),
      ],
    );
  }
}
