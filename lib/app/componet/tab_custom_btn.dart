import 'package:flutter/material.dart';

import '../../main.dart';
import '../constent/custom_text_style.dart';
import '../data/tab_model/tab_model_data.dart';
class TabCustomBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final TabModel? data;
  final bool? isSelected;
  const TabCustomBtn({super.key, this.onPressed, this.data,this.isSelected});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    if(width < 600){
     return FilledButton(
         style: FilledButton.styleFrom(
             alignment: Alignment.centerLeft,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(5)
             ),
             fixedSize: Size.fromWidth(MediaQuery.of(context).size.width/7),
             backgroundColor: isSelected == true ? Colors.transparent : Colors.blueAccent
         ),
         onPressed: onPressed, child: Icon(data?.icon,color: isSelected == true ? Colors.black : Colors.white,));
    }else{
      return FilledButton.icon(
        icon: Icon(data?.icon,color: isSelected == true ? Colors.black : Colors.white,),
        // icon: Icon(data?.icon,color: location != routeList[index].route ? Colors.black : Colors.white,),
        label: Text(data?.route?.split("/").last ?? "",style: CustomTextStyle.customTextStyle.kPrimaryTextStyle.copyWith(
            color: isSelected == true ? Colors.black : Colors.white
        ),),
        style: FilledButton.styleFrom(
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width/7),
            backgroundColor: isSelected == true ? Colors.transparent : Colors.blueAccent
        ),
        onPressed:onPressed,
      );
    }

  }
}
