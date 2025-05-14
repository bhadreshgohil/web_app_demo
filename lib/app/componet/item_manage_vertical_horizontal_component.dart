import 'package:flutter/material.dart';
class ItemManageVerticalHorizontalComponent extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final double? spacing;
  const ItemManageVerticalHorizontalComponent({super.key, required this.children, this.crossAxisAlignment, this.mainAxisAlignment, this.spacing});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWeb = constraints.maxWidth > 600;
        if(isWeb){
          return Row(
            spacing: spacing ?? 0.0,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            children: children,
          );
        }else{
          return Column(
            spacing: spacing ?? 0.0,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: children,
          );
        }
    },);
  }
}
