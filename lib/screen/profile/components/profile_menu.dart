import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../modal/profile_view_model.dart';
import '../../../style.dart';

class ProfileMenu extends StatelessWidget {
  void Function()? onTap;
   ProfileMenu({Key? key, this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        itemCount:profileView.length,
        itemBuilder: (context, index){
          ProfileView profileIist = profileView[index];
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  primary: Color(0xfff5f6f9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${profileIist.iamge}",width: 22,color: kPrimaryColor,),
                  SizedBox(width: 20,),
                  Expanded(child: Text(profileIist.title,
                    style: Theme.of(context).textTheme.bodyText1,)
                  ),
                  // Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ],
              ),
            ),
          );
        },),
    );
  }
}
