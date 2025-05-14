import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabModel{
  String? route;
  String? name;
  IconData? icon;

  TabModel({this.route, this.name,this.icon});

 static List<TabModel> routeList = [
    TabModel(route: '/home',name: 'home',icon: Icons.home),
    TabModel(route: '/items',name: 'items',icon: Icons.inventory),
    TabModel(route: '/banking',name: '/banking',icon: Icons.account_balance),
    TabModel(route: '/sales',name: '/sales',icon: Icons.sell),
    TabModel(route: '/purchases',name: '/purchases',icon: Icons.shopping_cart),
    TabModel(route: '/time-tracking',name: '/time-tracking',icon: Icons.access_time),
    TabModel(route: '/accountant',name: '/accountant',icon: Icons.people),
    TabModel(route: '/reports',name: '/reports',icon: Icons.bar_chart),
    TabModel(route: '/documents',name: '/documents',icon: Icons.description),
    TabModel(route: '/payroll',name: '/payroll',icon: Icons.payment),
  ];


}