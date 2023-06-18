import 'package:flutter/material.dart';

class DrawerData {
  String title;
  IconData icon;

  DrawerData({required this.title, required this.icon});
}

List<DrawerData> drawerList = [
  DrawerData(title: "Home", icon: Icons.home,),
  DrawerData(title: "Contact Us", icon: Icons.phone),
  DrawerData(title: "Address", icon: Icons.location_city_outlined),
  DrawerData(title: "Favorites", icon: Icons.favorite),
  DrawerData(title: "Settings", icon: Icons.settings),
  DrawerData(title: "Info", icon: Icons.info),
];