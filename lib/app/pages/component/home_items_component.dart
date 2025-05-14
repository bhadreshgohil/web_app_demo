import 'package:demo_for_web_app/app/constent/custom_text_style.dart';
import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../data/dummy_model/home_item_model.dart';
class HomeItemsComponent extends StatelessWidget {
  final HomeItemModel data;
  const HomeItemsComponent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withValues(alpha: 0.3)
        ),
        borderRadius: BorderRadius.circular(5.sp)
      ),
      child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Container(
             padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 5.sp),
             decoration: BoxDecoration(
              color: Colors.purple.shade50.withValues(alpha: 0.4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.sp),
                topRight: Radius.circular(5.sp),
              )
            ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(data.title ?? ""),
                 FilledButton.icon(
                   icon: Container(
                     decoration: BoxDecoration(
                       color: Colors.blue,
                        shape: BoxShape.circle
                     ),
                     padding: EdgeInsets.all(1),
                     child: Icon(Icons.add,color: Colors.white,),
                   ),
                     style: FilledButton.styleFrom(
                       backgroundColor: Colors.transparent
                     ),
                     onPressed: () {}, label: Text("new",style: CustomTextStyle.customTextStyle.kPrimaryTextStyle,))
               ],
             ),
          ),
          SizedBox(height: 10.sp,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 5.sp),
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children: [
                Text(data.subtitle ?? "",style: CustomTextStyle.customTextStyle.kPrimaryTextStyle.copyWith(
                   color: Colors.grey.withValues(alpha: 1)
                ),),
                SizedBox(height: 7.sp,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50.withValues(alpha: 0.4),
                  ),
                  height: 7.sp,
                ),
                SizedBox(height: 14.sp,),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                     mainAxisAlignment:  MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                         children: [
                           Text("DAILY SALES",style: CustomTextStyle.customTextStyle.kMediumTextStyle,),
                           Text.rich(TextSpan(
                             text: data.dalySale != "" ?  "\$ " : "",
                             children: [
                                TextSpan(
                                  text: data.dalySale,
                                   style:  CustomTextStyle.customTextStyle.kPrimaryTextStyle
                                )
                             ]
                           ))
                         ],
                      ),
                      Container(
                        width: 1.sp,
                        color: Colors.red.withValues(alpha: 0.2),
                      ),
                      Column(
                        children: [
                          Text("OVERDUE",style: CustomTextStyle.customTextStyle.kMediumTextStyle.copyWith(color: Colors.red),),
                          Text.rich(TextSpan(
                              text: data.dalySale != "" ?  "\$ " : "",
                              children: [
                                TextSpan(
                                    text: data.overdue,
                                    style:  CustomTextStyle.customTextStyle.kPrimaryTextStyle
                                )
                              ]
                          ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.sp,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
