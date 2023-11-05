import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_travel_application/screens/discovery_screen_three.dart';
import 'package:student_travel_application/screens/discovery_screen_two.dart';
import 'package:student_travel_application/screens/favorites_section_first_screen.dart';
import 'package:student_travel_application/screens/login_first_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Traver app',
          theme: ThemeData(),
          home: child,
        );
      },
      child: const LoginFirstScreen(),
    );
  }
}
