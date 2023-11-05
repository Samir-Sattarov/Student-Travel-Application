import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:student_travel_application/screens/favorites_section_first_screen.dart';
import 'package:student_travel_application/screens/favorites_section_second_screen.dart';
import 'package:student_travel_application/screens/favorites_section_third_screen.dart';

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
          theme: ThemeData(
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Traver app',
          home: child,
        );
      },
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 250,
                child: CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(
                        context, FavoritesSectionFirstScreen.route());
                  },
                  child: const Text('First Screen'),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(
                        context, FavoritesSectionSecondScreen.route());
                  },
                  child: const Text('Second Screen'),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(
                        context, FavoritesSectionThirdScreen.route());
                  },
                  child: const Text('Third Screen'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Navigator.push(context, SecondScreen.route());
}
