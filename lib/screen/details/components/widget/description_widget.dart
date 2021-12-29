import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../modal/product.dart';
import '../../../../size_mediaquery.dart';
import '../../../../style.dart';


class DescriptionContainer extends StatelessWidget {
  final  Product detailProduct;
  void Function()? onTap;
   DescriptionContainer({Key? key,this.onTap,required this.detailProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Text(detailProduct.title,style: Theme.of(context).textTheme.headline6,),
        ),
        SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(8)),
            width: getProportionateScreenWidth(44),
            decoration: BoxDecoration(
              color:detailProduct.isFavourite?Color(0xffffe6e6):Color(0xfff5f6f9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),

            ),
            child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
              color:detailProduct.isFavourite? Color(0xffff4848):Color(0xffdbd334),),
          ),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(
            right: getProportionateScreenWidth(35),
            left: getProportionateScreenWidth(10),
          ),
          child: Text(detailProduct.description),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: 10),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: const [
                Text("See More Details",style: TextStyle(
                    color: kPrimaryColor,fontWeight: FontWeight.w600),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,color: kPrimaryColor,size: 12,)
              ],
            ),
          ),
        ),

      ],
    );
  }
}
