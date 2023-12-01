import '../dashboard_screen/widgets/dashboard_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState(
        dashboardModelObj: DashboardModel(),
      ))
        ..add(DashboardInitialEvent()),
      child: DashboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEight(context),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child: Text(
                    "lbl_good_afternoon".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 48.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 154.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_12".tr,
                      style: CustomTextStyles.bodySmallBluegray50001,
                    ),
                    SizedBox(height: 19.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            bottom: 23.v,
                          ),
                          child: Text(
                            "lbl_9".tr,
                            style: CustomTextStyles.bodySmallBluegray50002,
                          ),
                        ),
                        SizedBox(
                          height: 54.v,
                          width: 66.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine1,
                                height: 31.v,
                                width: 54.h,
                                alignment: Alignment.bottomRight,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  child: Divider(),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                  margin: EdgeInsets.only(top: 20.v),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      3.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            bottom: 23.v,
                          ),
                          child: Text(
                            "lbl_3".tr,
                            style: CustomTextStyles.bodySmallBluegray50002,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_6".tr,
                      style: CustomTextStyles.bodySmallBluegray50002,
                    ),
                    SizedBox(height: 1.v),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text(
                    "lbl_tasks_list".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildOne(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return SizedBox(
      height: 308.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 100.h,
                vertical: 49.v,
              ),
              decoration: AppDecoration.fillSecondaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 73.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      50.h,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "msg_welcome_sabrina".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShape,
            height: 84.v,
            width: 200.h,
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 27.h,
        right: 24.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_daily_tasks".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 92.h,
            ),
            child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
              selector: (state) => state.dashboardModelObj,
              builder: (context, dashboardModelObj) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 22.v,
                    );
                  },
                  itemCount: dashboardModelObj?.dashboardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    DashboardItemModel model =
                        dashboardModelObj?.dashboardItemList[index] ??
                            DashboardItemModel();
                    return DashboardItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 42.v),
        ],
      ),
    );
  }
}
