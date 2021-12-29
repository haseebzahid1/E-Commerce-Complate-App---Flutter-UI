import 'package:flutter/material.dart';
import '../size_mediaquery.dart';
import '../style.dart';



class DefaultButton extends StatelessWidget {
  final String text;
  final double? size;
  double? height;
  void Function()? onPressed;
   DefaultButton({Key? key, required this.text, required this.onPressed, this.size,this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: height??getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            )
        ),
        child: Text(text,style: TextStyle(
          fontSize:size ?? getProportionateScreenWidth(14),
          color: Colors.white,
        ),),
        onPressed: onPressed,
      ),
    );
  }
}
