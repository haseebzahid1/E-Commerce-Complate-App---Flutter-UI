import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../modal/categories.dart';
import '../../../size_mediaquery.dart';

class CatagoriesPage extends StatelessWidget {
  // final Catagories catagories;
  const CatagoriesPage({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 130,
        // color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: catagories.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index){
            Catagories catagoriesItem = catagories[index];
            return Container(
              // decoration:BoxDecoration(color: Colors.red ),
              margin: EdgeInsets.only(right: 10),
              width: getProportionateScreenWidth(35),
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      height: getProportionateScreenWidth(35),
                      width: getProportionateScreenWidth(35),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(catagoriesItem.iamge),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(5)),
                      child: Text(catagoriesItem.title, textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
            );
          },)
    );
  }
}
