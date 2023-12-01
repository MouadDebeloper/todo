// ignore_for_file: must_be_immutable

part of 'registration_bloc.dart';

/// Represents the state of Registration in the application.
class RegistrationState extends Equatable {
  RegistrationState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.registrationModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  RegistrationModel? registrationModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        confirmpasswordController,
        registrationModelObj,
      ];
  RegistrationState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    RegistrationModel? registrationModelObj,
  }) {
    return RegistrationState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      registrationModelObj: registrationModelObj ?? this.registrationModelObj,
    );
  }
}
