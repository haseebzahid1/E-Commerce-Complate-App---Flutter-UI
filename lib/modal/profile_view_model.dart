import 'package:flutter/material.dart';


class ProfileView{
  final String title;
  final String iamge;

  ProfileView({
    required this.title,
    required this.iamge,

  });
}


List<ProfileView> profileView = [
  ProfileView(
    title: "My Account",
    iamge: "assets/icons/User Icon.svg",
  ),ProfileView(
    title: "Notification",
    iamge: "assets/icons/Bell.svg",
  ),ProfileView(
    title: "Settings",
    iamge: "assets/icons/Settings.svg",
  ),ProfileView(
    title: "Help Center",
    iamge: "assets/icons/Question mark.svg",
  ),ProfileView(
    title: "Log Out",
    iamge: "assets/icons/Log out.svg",
  ),
];