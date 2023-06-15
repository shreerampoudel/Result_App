import 'package:flutter/material.dart';

class DrawerData {
  String title;
  IconData icon;

  DrawerData({required this.title, required this.icon});
}

List<DrawerData> drawerList = [
  DrawerData(title: "Home", icon: Icons.home,),
  DrawerData(title: "Contact Us", icon: Icons.phone),
  DrawerData(title: "Favorites", icon: Icons.favorite),
  DrawerData(title: "Profile", icon: Icons.person),
  DrawerData(title: "Tokens", icon: Icons.attach_money),
  DrawerData(title: "Settings", icon: Icons.settings),
];