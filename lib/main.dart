import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/screens/login_first_screen.dart';
import 'package:student_travel_application/screens/discovery_screen_three.dart';

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
          home: child,
        );
      },
      child: MyLoginfirstscreen(

      ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true
          ),
          home: child,
        );
      },
      child:const DiscoveryScreenThree(),
    );
  }
}



