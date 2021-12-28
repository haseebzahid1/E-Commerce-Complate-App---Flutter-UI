import 'package:flutter/material.dart';

import '../../../modal/special_Product.dart';
import '../../../size_mediaquery.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(60),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10)
      ),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: specialOffer.length,
        itemBuilder: (context, index){
          SpecialOffer specialProduct = specialOffer[index];
          return InkWell(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(right: 20),
              width: 320,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(specialProduct.image,
                          height: getProportionateScreenWidth(60),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0),
                        vertical: getProportionateScreenWidth(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(specialProduct.title,style:TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.bold,
                          )),
                          Text(specialProduct.numOfBrads,style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
