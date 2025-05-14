
import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {

  static CustomTextStyle customTextStyle = CustomTextStyle();


  TextStyle get kPrimaryTextStyle => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp
  );


  TextStyle get kPrimaryBoldTextStyle => TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 15.sp
  );

  TextStyle get kAppBarTextStyle => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 15
  );


  TextStyle get kMediumTextStyle => TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w500,
      fontSize: 10.sp
  );



}