import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../size_mediaquery.dart';
import '../../home/home_screen.dart';
import '../../register_account/register_screen.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! *0.04,),
        Image.asset("assets/images/success.png",height: SizeConfig.screenHeight! * 0.4,),
        SizedBox(height: SizeConfig.screenHeight! *0.08,),
        Text("Login Success",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(20),
          color: Colors.black,
        ),),
        Spacer(),
        Container(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            size: getProportionateScreenWidth(11),
            text: 'Back to Home',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
            },),
        ),
        Spacer(),
      ],
    );
  }
}
