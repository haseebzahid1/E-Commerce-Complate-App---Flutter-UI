import 'package:flutter/material.dart';
import 'package:sign_up_login_form/size_mediaquery.dart';
import 'package:sign_up_login_form/style.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20),),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    ),
                    Stack(
                      children: [
                        Container(
                          height: getProportionateScreenWidth(26),
                          width: getProportionateScreenWidth(26),
                          decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.notifications_none),
                        ),
                        Positioned(
                          top: -3,
                          right: 0,
                          child: Container(
                            height: getProportionateScreenWidth(10),
                            width: getProportionateScreenWidth(10),
                            decoration: BoxDecoration(
                              color: Color(0xffff4848),
                              shape: BoxShape.circle,
                              border: Border.all(width: 1.5,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
