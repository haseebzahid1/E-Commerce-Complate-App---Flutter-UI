import 'package:flutter/material.dart';

import '../../../size_mediaquery.dart';
import '../../../style.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.6,
      height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onChanged: (String){},
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search Procuct",
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(8)
            )
        ),
      ),
    );
  }
}
