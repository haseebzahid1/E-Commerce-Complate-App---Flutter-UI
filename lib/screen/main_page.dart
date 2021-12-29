import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_login_form/screen/profile/profile_screen.dart';
import 'package:sign_up_login_form/screen/register_account/register_screen.dart';
import 'package:sign_up_login_form/style.dart';

import 'cart/cart_screen.dart';
import 'home/home_screen.dart';
import 'login_success/login_success_screen.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    List pages = [
      HomeScreen(),
      LoginSuccessScreen(),
      CartScreen(),
      ProfilePage(),
    ];
    void onTab(int index){
      setState(() {
        currentIndex = index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor:kPrimaryColor.withOpacity(0.3) ,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(label: "Home",icon:Icon(Icons.home,)),
          BottomNavigationBarItem(label: "Sol",icon:Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: "Main",icon:Icon(Icons.add_circle_outline)),
          BottomNavigationBarItem(label: "My",icon:Icon(Icons.perm_identity)),
        ],
      ),
    );
  }
}
