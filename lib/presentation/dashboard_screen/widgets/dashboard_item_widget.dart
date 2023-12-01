import '../models/dashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(
    this.dashboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardItemModel dashboardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 17.adaptSize,
          width: 17.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 1.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer.withOpacity(0.59),
            border: Border.all(
              color: appTheme.gray600,
              width: 1.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: Text(
            dashboardItemModelObj.learnProgramming!,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
