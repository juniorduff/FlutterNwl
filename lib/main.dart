import 'package:flutter/material.dart';
import 'package:nwl/modules/splash/splash_page.dart';
import 'package:nwl/shared/themes/app_color.dart';

import 'modules/login/login_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginPage(),
    );
  }
}
