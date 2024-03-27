import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qhance_uiii/Screens/splash.dart';
import 'package:qhance_uiii/controllers/api/login_controller.dart';
import 'package:qhance_uiii/controllers/api/splash_controller.dart';
import 'package:qhance_uiii/controllers/api/get_user_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());
    

    return ScreenUtilInit(
      designSize: const Size(360, 850),
      minTextAdapt: true,
      splitScreenMode: false, // Initialize splitScreenMode property
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: Splash()
    );
  }
}
