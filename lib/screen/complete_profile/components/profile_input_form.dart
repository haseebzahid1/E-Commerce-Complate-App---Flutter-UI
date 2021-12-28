import 'package:flutter/material.dart';
import '../../form/components/form_button.dart';
import '../../form/components/inputfield.dart';
import '../../otp/otp_Screen.dart';


class CompleteProfileForm extends StatefulWidget {

  CompleteProfileForm({Key? key,}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  bool isHiddenPasswrod = true;
  String firstname = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";
  final _formKey = GlobalKey<FormState>();
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    onSavePhoneNumber(String? value){phoneNumber != value;}
    onSaveAdress(String? value){address != value;}
    onChangedPhoneNumber (String value){
      setState(() {phoneNumber != value;});
    }
    onChangedAdress (String value){
      setState(() {address != value;});
    }
    onSavedFirstName (String? value){
      setState(() {firstname != value;});
    }
    onSavedFirstLastName(String? value){
      setState(() {lastName != value;});
    }
    onChangedFirstName(String value){
      setState(() {firstname = value;});
    }
    onChangedLastName(String value){
      setState(() {lastName = value;});
    }
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [

          // const SizedBox(height: 10,),
          InputField(
            labelText: "FirstName",
            suffixIcon: Icon(Icons.person),
            onSaved: onSavedFirstName,
            onChanged: onChangedFirstName,
            validate: validateFirstName,
            initialValue: "Haseeeb",
          ),
          SizedBox(height: 30,),
          InputField(
            labelText: "lastName",
            suffixIcon: Icon(Icons.person),
            onSaved: onSavedFirstLastName,
            onChanged: onChangedLastName,
            validate: validatelastName,
            initialValue: "zahid",
          ),
          SizedBox(height: 30,),
          InputField(
            labelText: "Phone Number",
            suffixIcon: Icon(Icons.phone_iphone),
            onSaved: onSavePhoneNumber,
            onChanged: onChangedPhoneNumber,
            validate: validatePhoneNumber,
            initialValue: "0302-3344551",
          ),
          SizedBox(height: 30,),
          InputField(
            labelText: "Address",
            suffixIcon: Icon(Icons.location_on),
            onSaved: onSaveAdress,
            onChanged: onChangedAdress,
            validate: validateAdress,
            initialValue: "Enter your first name",
          ),
          const SizedBox(height: 40,),
          FormButton(
            onTap: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                print("{$firstname,$lastName,$phoneNumber,$address}");
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("VaLIDATION PASSED"))
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("VALIDATION ERROR")));
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtpScreen()));
            },
            padding:EdgeInsets.symmetric(vertical: 13) ,
            bgcolor: Colors.deepOrange.withOpacity(0.7), color: Colors.white,
            width: double.infinity, textButton: 'Continue',),
        ],
      ),
    );
  }

  String? validateFirstName(String? value){
    if(value==null || value.isEmpty){
      return "please enter your user FirstName";
    }else if(value.length<=3 ){
      return "FirstName length must be 3 or greater";
    }else if(value.length>=18){
      return "FirstName length must be 18 character or less";
    }else{
      return null;
    }
  }  String? validatelastName(String? value){
    if(value==null || value.isEmpty){
      return "please enter your user LastName";
    }else if(value.length<=3 ){
      return "LastName length must be 3 or greater";
    }else if(value.length>=18){
      return "LastName length must be 18 character or less";
    }else{
      return null;
    }
  }
  String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'PhoneNumber cannot be empty';
    }else if(value.length<=3){
      return "Phonenumber length must be 3 or greater";
    }else if(value.length>=16){
      return "PhoneNumber length must be 12 character or less";
    } else {
      return null;
    }
  } String? validateAdress(String? value){
    if (value == null || value.isEmpty) {
      return "Adress length must be 12 character or less";
    }else if(value.length<=3){
      return "Adress length must be 3 or greater";
    }else if(value.length>=36){
      return "";
    } else {
      return null;
    }
  }

}
