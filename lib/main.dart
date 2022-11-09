import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:job_application_app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent)); // transparent status bar
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        getPages: AppPages.routes,
        initialRoute: Routes.LOGIN,
        debugShowCheckedModeBanner: false,
        enableLog: false,
        defaultTransition: Transition.downToUp,
        smartManagement: SmartManagement.keepFactory,
      );
    });
  }
}
