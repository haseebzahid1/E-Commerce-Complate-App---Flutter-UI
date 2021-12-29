import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../modal/product.dart';
import '../../../size_mediaquery.dart';
import '../../../style.dart';
import '../../details/detail_screen.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: demoProducts.length,
        itemBuilder: (context, index){
          Product productItem = demoProducts[index];
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(
                  demoProduct:productItem
              )));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(15),
                          horizontal: getProportionateScreenWidth(4)
                      ),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset(productItem.images[0],
                        width: double.infinity,
                        height: 70,fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 5,),
                    Text(productItem.title,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 13),),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${productItem.price}",style: TextStyle(
                            fontWeight: FontWeight.w600,color: kPrimaryColor,fontSize: getProportionateScreenWidth(8)
                        ),),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:productItem.isFavourite
                                  ?kPrimaryColor.withOpacity(0.15)
                                  :kSecondaryColor.withOpacity(0.1),

                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: SvgPicture.asset(
                                "assets/icons/Heart Icon_2.svg",fit: BoxFit.cover,
                                color: productItem.isFavourite?Color(0xffff4848):Color(0xffdbdee4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
          );
        },),
    );
  }
}
