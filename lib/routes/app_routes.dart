import 'package:flutter/material.dart';
import 'package:todo/presentation/splash_screen/splash_screen.dart';
import 'package:todo/presentation/registration_screen/registration_screen.dart';
import 'package:todo/presentation/log_in_screen/log_in_screen.dart';
import 'package:todo/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:todo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String registrationScreen = '/registration_screen';

  static const String logInScreen = '/log_in_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        registrationScreen: RegistrationScreen.builder,
        logInScreen: LogInScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: RegistrationScreen.builder
      };
}
