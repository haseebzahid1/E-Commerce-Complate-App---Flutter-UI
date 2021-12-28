import 'package:flutter/material.dart';

import '../../../size_mediaquery.dart';
class SectionTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  void Function()? onTab;
   SectionTitle({Key? key, required this.title, required this.subTitle,this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
            fontSize: getProportionateScreenWidth(13),
            color: Colors.black,
          ),),
          InkWell(
            onTap: onTab,
              child: Text(subTitle)
          ),
        ],
      ),
    );
  }
}
