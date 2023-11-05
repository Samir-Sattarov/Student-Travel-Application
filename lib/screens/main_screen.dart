import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'discovery_screen_one.dart';
import 'discovery_screen_three.dart';
import 'discovery_screen_two.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> listOfScreens = [
    const DiscoveryScreenOneScreen(),
    const DiscoveryScreenTwoScreen(),
    const DiscoveryScreenThree()
  ];
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreens[currentScreen],
      bottomNavigationBar: Container(
        height: 96.h,
        width: 395.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16), topLeft: Radius.circular(16))
                .r),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, bottom: 30, left: 40, right: 40).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 0;
                  });
                },
                child: SizedBox(
                  height: 58.h,
                  width: 64.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: const Icon(Icons.location_on),
                      ),
                      Text(
                        "Trips",
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 1;
                  });
                },
                child: SizedBox(
                  height: 58.h,
                  width: 64.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: const Icon(Icons.heart_broken),
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 2;
                  });
                },
                child: SizedBox(
                  height: 58.h,
                  width: 64.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: const Icon(Icons.settings),
                      ),
                      Text(
                        "Trips",
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
