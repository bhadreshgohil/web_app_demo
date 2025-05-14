
import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'app/route/route.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        routerConfig: myRouters,
      );
      },
    );
  }
}




