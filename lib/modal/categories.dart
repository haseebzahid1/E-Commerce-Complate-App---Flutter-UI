import 'package:flutter/material.dart';


class Catagories{
  final String title;
  final String iamge;

  Catagories({
    required this.title,
    required this.iamge,
  });
}


List<Catagories> catagories = [
  Catagories(
    title: "Flash Deal",
    iamge: "assets/icons/Flash Icon.svg",
  ),Catagories(
    title: "Bill",
    iamge: "assets/icons/Bill Icon.svg",
  ),Catagories(
    title: "Game",
    iamge: "assets/icons/Game Icon.svg",
  ),Catagories(
    title: "Daily Gift",
    iamge: "assets/icons/Gift Icon.svg",
  ),Catagories(
    title: "More",
    iamge: "assets/icons/Discover.svg",
  ),
];