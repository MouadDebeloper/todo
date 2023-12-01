import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/core/utils/validation_functions.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => LogInBloc(LogInState(
        logInModelObj: LogInModel(),
      ))
        ..add(LogInInitialEvent()),
      child: LogInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
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
                Text(
                  "lbl_welcome_back".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 63.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUndrawSignUpN6im,
                  height: 162.v,
                  width: 225.h,
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    right: 20.h,
                  ),
                  child: BlocSelector<LogInBloc, LogInState,
                      TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_enter_your_email2".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    right: 20.h,
                  ),
                  child: BlocSelector<LogInBloc, LogInState,
                      TextEditingController?>(
                    selector: (state) => state.passwordController,
                    builder: (context, passwordController) {
                      return CustomTextFormField(
                        controller: passwordController,
                        hintText: "lbl_enter_password2".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                      );
                    },
                  ),
                ),
                SizedBox(height: 23.v),
                Text(
                  "msg_forget_password".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 18.v),
                CustomElevatedButton(
                  text: "lbl_register".tr,
                  margin: EdgeInsets.only(
                    left: 30.h,
                    right: 20.h,
                  ),
                ),
                SizedBox(height: 34.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_an_account2".tr,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                      TextSpan(
                        text: "lbl_sign_up".tr,
                        style: CustomTextStyles.labelLargeBluegray500,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 45.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
