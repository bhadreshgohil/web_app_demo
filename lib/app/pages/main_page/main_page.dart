
import 'package:demo_for_web_app/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../componet/tab_custom_btn.dart';
import '../../constent/custom_text_style.dart';
import '../../data/tab_model/tab_model_data.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouter.of(context).state.path;
    return Scaffold(
      backgroundColor: Colors.purple.shade50.withValues(alpha: 0.4),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: MediaQuery.of(context).size.width/7,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("DlumeBiz",style: CustomTextStyle.customTextStyle.kAppBarTextStyle,),
          ],
        ),
        actions: [

          Text("Trial expires in 14 days.",style: CustomTextStyle.customTextStyle.kAppBarTextStyle.copyWith(fontSize: 10.sp),),

          SizedBox(width: 10.sp),

          Icon(Icons.check_circle_outline),

          SizedBox(width: 10.sp),

          Icon(Icons.add_box_outlined),

          SizedBox(width: 10.sp),

          Container(
            height: 50.sp,
            width: 50.sp,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Container(

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(TabModel.routeList.length, (index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        child: TabCustomBtn(
                          data: TabModel.routeList[index],
                          onPressed: () {
                            context.go(TabModel.routeList[index].route ?? "");
                          },
                          isSelected: location != TabModel.routeList[index].route,
                        ),
                      );
                    },
                    )),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }

}