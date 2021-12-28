import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../component/constant.dart';
import '../../../size_mediaquery.dart';
import '../../../style.dart';
import '../../form/components/form_button.dart';
import '../../login_success/login_success_screen.dart';

class OtpBodyScreen extends StatelessWidget {
  const OtpBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: getProportionateScreenHeight(40),),
              Text("OTP Verfication", style: headingStyle),
              Text("We sent your code to +1 898 860 ***",),
              SizedBox(height: SizeConfig.screenHeight! * 0.15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This code will expired in"),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 30.0,end: 0),
                      duration: Duration(seconds: 1),
                      builder: (context,value, child) => Text(
                        "00:${value.toString()}",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                  ),

                ],
              ),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.1,),
              Text("Resend OTP Code",style: TextStyle(decoration: TextDecoration.underline),)
            ],
          ),
        ),
      ),
    );
  }
}


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode ;
  late FocusNode pin3FocusNode ;
  late FocusNode pin4FocusNode;
  @override
  void initState(){
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  void dispose(){
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }
  void nextField({ required String value,   required FocusNode focusNode}){
    print(value.length);
    if(value.length==1){
      focusNode.requestFocus();
    }
  }
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getProportionateScreenWidth(30),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ), Container(
                width: getProportionateScreenWidth(30),
                child: TextFormField(
                  focusNode: pin2FocusNode,

                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ), Container(
                width: getProportionateScreenWidth(30),
                child: TextFormField(
                  focusNode: pin3FocusNode,

                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ), Container(
                width: getProportionateScreenWidth(30),
                child: TextFormField(
                  focusNode: pin4FocusNode,

                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height:SizeConfig.screenHeight! * 0.15),
          FormButton(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginSuccessScreen()));
            },
            padding:EdgeInsets.symmetric(vertical: 13) ,
            bgcolor: Colors.deepOrange.withOpacity(0.7), color: Colors.white,
            width: double.infinity, textButton: 'Continue',),
        ],
      ),
    );
  }


}
