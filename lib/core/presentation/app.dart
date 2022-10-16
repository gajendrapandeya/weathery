import 'package:flutter/material.dart';
import 'package:weathery/core/constants/app_constants.dart';
import 'package:weathery/core/routes/app_router.dart';
import 'package:weathery/core/theme/theme.dart';
import 'package:weathery/di/di_setup.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  AppRouter get _router => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      theme: AppTheme.dark,
    );
  }
}
