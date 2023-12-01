import 'bloc/registration_bloc.dart';
import 'models/registration_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/core/utils/validation_functions.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
        create: (context) => RegistrationBloc(
            RegistrationState(registrationModelObj: RegistrationModel()))
          ..add(RegistrationInitialEvent()),
        child: RegistrationScreen());
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
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgShape,
                          height: 84.v,
                          width: 200.h,
                          alignment: Alignment.centerLeft),
                      Spacer(),
                      Text("msg_welcome_onboard".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 31.v),
                      Text("msg_let_s_help_you_meet".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 60.v),
                      _buildFullName(context),
                      SizedBox(height: 30.v),
                      _buildEmail(context),
                      SizedBox(height: 31.v),
                      _buildPassword(context),
                      SizedBox(height: 34.v),
                      _buildConfirmpassword(context),
                      SizedBox(height: 51.v),
                      _buildRegister(context),
                      SizedBox(height: 34.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_already_have_an2".tr,
                                style: CustomTextStyles.labelLargeBlack900),
                            TextSpan(
                                text: "lbl_sign_in".tr,
                                style: CustomTextStyles.labelLargeBluegray500)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 45.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 23.h),
        child: BlocSelector<RegistrationBloc, RegistrationState,
                TextEditingController?>(
            selector: (state) => state.fullNameController,
            builder: (context, fullNameController) {
              return CustomTextFormField(
                  controller: fullNameController,
                  hintText: "msg_enter_your_full".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 23.h),
        child: BlocSelector<RegistrationBloc, RegistrationState,
                TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "msg_enter_your_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 23.h),
        child: BlocSelector<RegistrationBloc, RegistrationState,
                TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                  controller: passwordController,
                  hintText: "lbl_enter_password".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 23.h),
        child: BlocSelector<RegistrationBloc, RegistrationState,
                TextEditingController?>(
            selector: (state) => state.confirmpasswordController,
            builder: (context, confirmpasswordController) {
              return CustomTextFormField(
                  controller: confirmpasswordController,
                  hintText: "msg_confirm_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 27.h, right: 23.h));
  }
}
