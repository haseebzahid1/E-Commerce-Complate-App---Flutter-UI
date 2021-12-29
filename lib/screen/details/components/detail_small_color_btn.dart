import 'package:flutter/material.dart';
import 'package:sign_up_login_form/modal/product.dart';

import '../../../component/app_small_btn_widget.dart';
import '../../../size_mediaquery.dart';
import '../../../style.dart';
import 'add_cart_button.dart';

class ColorDots extends StatefulWidget {
  final Product detailProduct;
   ColorDots({Key? key,  required this.detailProduct}) : super(key: key);
  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int seledtedColor = 3;
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(7)),

      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xfff6f7f9),
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),)
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),vertical: getProportionateScreenWidth(10)),
            child: Row(
              children: [
                Row(
                  children: List.generate(widget.detailProduct.images.length, (int index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          seledtedColor=index;
                        });
                        print(index);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(8),
                        height: getProportionateScreenWidth(20),
                        width: getProportionateScreenWidth(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color:seledtedColor==index ?kPrimaryColor:Colors.transparent),
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: widget.detailProduct.colors[index],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  }

                  ),
                ),
                Spacer(),
                Row(
                 children: [
                   AppSmallButtonWidget(
                     icon: Icons.remove,
                     demoProduct:widget.detailProduct,onTab: (){},
                     child:const Center(
                         child: Icon(Icons.remove,color: Colors.black,)
                     ),
                   ),
                   const SizedBox(width: 10,),
                   AppSmallButtonWidget(
                     icon: Icons.remove,
                     demoProduct:widget.detailProduct,onTab: (){},
                     child:const Center(
                         child: Icon(Icons.add,color: Colors.black,)
                     ),
                   ),
                 ],
               ),
              ],
            ),
          ),
          AddCartButton(),
        ],
      ),
    );
  }
}
