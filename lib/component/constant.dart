import 'package:flutter/material.dart';

import '../size_mediaquery.dart';
import '../style.dart';

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(4)
    ),
    enabledBorder: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(),
    border: OutlineInputBorder(),
);

OutlineInputBorder outlineInputBorder(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}