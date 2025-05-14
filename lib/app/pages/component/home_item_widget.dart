import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';
class HomeItemWidget extends StatelessWidget {
  final int itemCount;
  final ItemResponse itemResponse;
  const HomeItemWidget({super.key,required this.itemCount, required this.itemResponse});

  @override
  Widget build(BuildContext context) {
  return LayoutBuilder(builder: (context, constraints) {
    final isWeb = constraints.maxWidth > 600;
    if(isWeb){
      return Row(
           spacing: 10.sp,
          children: List.generate(itemCount, (index) =>  Expanded(child: Container(child: itemResponse(index)))));
    }else{
      return Column(
          spacing: 10.sp,
          children: List.generate(itemCount, (index) =>  SizedBox(
          width: double.infinity,
          child: itemResponse(index))));
    }
  },);
  }
}
typedef ItemResponse = Widget Function(int index);