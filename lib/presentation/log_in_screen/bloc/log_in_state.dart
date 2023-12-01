// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.
class LogInState extends Equatable {
  LogInState({
    this.emailController,
    this.passwordController,
    this.logInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        logInModelObj,
      ];
  LogInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
