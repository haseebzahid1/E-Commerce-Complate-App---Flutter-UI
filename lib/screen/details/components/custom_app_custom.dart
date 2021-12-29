import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_up_login_form/modal/product.dart';

import '../../../size_mediaquery.dart';


// class RoundedIconBtn extends StatelessWidget {
//    RoundedIconBtn({
//     Key? key,
//     required this.icon,
//     this.showShadow = false,
//     this.onPressed
//   }) : super(key: key);
//
//   final IconData icon;
//   void Function()? onPressed;
//   final bool showShadow;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: getProportionateScreenWidth(40),
//       width: getProportionateScreenWidth(40),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.red,
//         boxShadow: [
//           if (showShadow)
//             BoxShadow(
//               offset: Offset(0, 6),
//               blurRadius: 10,
//               color: Color(0xFFB0B0B0).withOpacity(0.2),
//             ),
//         ],
//       ),
//       child: ElevatedButton(
//         style:ElevatedButton.styleFrom(
//           primary:Colors.white38.withOpacity(0.8),
//           padding: EdgeInsets.zero,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//         ) ,
//         onPressed: onPressed,
//         child: Icon(icon,),
//       ),
//     );
//   }
// }


class CuctomAppButton extends StatelessWidget {
  final IconData icon;
  void Function()? onPressed;
   bool showShadow;
   final Product demoProduct;
   CuctomAppButton({Key? key,   required this.icon,  this.showShadow =false,this.onPressed, required this.demoProduct, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              height: getProportionateScreenWidth(26),
      width: getProportionateScreenWidth(26),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            if (showShadow)
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 10,
                color: Color(0xFFB0B0B0).withOpacity(0.2),
              ),
          ],
      ),
      child: InkWell(
          onTap: onPressed,
            child: Container(

              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
              child: Center(child: Icon(icon,color: Colors.black,)),
            )
      ),
    ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Text("${demoProduct.rating}",style: TextStyle(
                      fontWeight:FontWeight.w600,
                    ),),
                    SizedBox(width: 5,),
                    SvgPicture.asset("assets/icons/Star Icon.svg")
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
