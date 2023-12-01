import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgShape,
                    height: 84.v,
                    width: 200.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgUndrawIdeasRe7twj,
                    height: 304.v,
                    width: 275.h,
                  ),
                  SizedBox(height: 32.v),
                  Text(
                    "msg_get_things_done".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 29.v),
                  Container(
                    width: 340.h,
                    margin: EdgeInsets.only(
                      left: 45.h,
                      right: 43.h,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                    text: "lbl_get_started".tr,
                    margin: EdgeInsets.symmetric(horizontal: 25.h),
                  ),
                  SizedBox(height: 98.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
