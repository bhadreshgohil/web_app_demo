import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../componet/item_manage_vertical_horizontal_component.dart';
import '../../constent/custom_text_style.dart';
import '../../data/dummy_model/home_item_model.dart';
import '../component/home_chart_component.dart';
import '../component/home_item_widget.dart';
import '../component/home_items_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.sp,vertical: 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Hello, D'Lume",style: CustomTextStyle.customTextStyle.kPrimaryBoldTextStyle,),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                SizedBox(height: 5.sp,),
                Text("info@dlume.com",style: CustomTextStyle.customTextStyle.kPrimaryTextStyle)
              ],
            ),
            SizedBox(height: 10.sp,),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton.icon(
                label: Text("Aad customer"),
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.sp)),
                    backgroundColor: Colors.blueAccent
                ),
                onPressed: () {

                }, icon: Icon(Icons.supervised_user_circle_outlined),),
            ),
            SizedBox(height: 15.sp,),
            HomeItemWidget(itemCount: HomeItemModel.list.length,itemResponse: (index) => HomeItemsComponent(data: HomeItemModel.list[index])),
            SizedBox(height: 15.sp,),
            Container(
              width: double.infinity,
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
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 5.sp),
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.sp),
                          topRight: Radius.circular(5.sp),
                        )
                    ),
                    child: Text("Top Selling Product"),
                  ),
                  SizedBox(height: 20.sp,),
                  HomeChartComponent()

                ],
              ),
            ),
            SizedBox(height: 20.sp,),
            ItemManageVerticalHorizontalComponent(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10.sp,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () {}, child: Container(
                    padding:  EdgeInsets.symmetric(vertical: 5.sp,horizontal: 7.sp),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50.withValues(alpha: 0.4),
                    ),
                    child: Text("VIEW SALES HISTORY",style: CustomTextStyle.customTextStyle.kPrimaryBoldTextStyle.copyWith(
                      fontSize: 13.sp,fontWeight: FontWeight.w500
                    ),))),
                InkWell(onTap: () {}, child: Container(
                    padding:  EdgeInsets.symmetric(vertical: 5.sp,horizontal: 7.sp),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50.withValues(alpha: 0.4),
                    ),
                    child: Text("VIEW PURCHANGE HISTORY",style: CustomTextStyle.customTextStyle.kPrimaryBoldTextStyle.copyWith(
                        fontSize: 13.sp,fontWeight: FontWeight.w500
                    ),))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}