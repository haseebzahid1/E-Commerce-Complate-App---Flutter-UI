import 'package:flutter/material.dart';
import 'package:sign_up_login_form/modal/product.dart';

import 'components/detail_body.dart';
import 'components/custom_app_custom.dart';

class DetailsScreen extends StatelessWidget {
  final Product demoProduct;
  const DetailsScreen({Key? key, required this.demoProduct, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CuctomAppButton(demoProduct:demoProduct, icon:Icons.arrow_back_ios,onPressed: (){Navigator.of(context).pop();},),
              DetailBody(detailProduct:demoProduct),
            ],
          ),
        ),
      ),
    );
  }
}
