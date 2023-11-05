import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

import 'login_second_screen.dart';

class LoginFirstScreen extends StatefulWidget {
  const LoginFirstScreen({super.key});

  @override
  State<LoginFirstScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 709.1.h,
              width: 375.w,
              child: Column(
                children: [
                  Column(
                    children: [
                      Image.asset(Assets.tAva),
                      Text('Find a Roomie',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w800,
                          ))),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'We\'ve helped millions across the nation find ',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff656F77))),
                      ),
                      Text('their perfect match... and you\'re next',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff656F77)))),
                      Container(
                        margin: const EdgeInsets.only(top: 120),
                        width: 343.w,
                        height: 104.1.h,
                        padding: const EdgeInsets.only(
                          top: 24,
                          left: 16,
                          bottom: 24,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 147.5.w,
                                height: 56.1.h,
                                padding: const EdgeInsets.only(
                                    left: 55, top: 10),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(4).r,
                                    border: Border.all(
                                      color: const Color(0xff191D21),
                                      width: 1,
                                    )),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Skip',
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff191D21)),
                                    ),
                                  ),
                                )),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LoginSecondScreen()));
                              },
                              child: Ink(
                                height: 56.1.h,
                                width: 147.5.w,
                                padding: const EdgeInsets.only(
                                    left: 50, top: 10),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(4).r,
                                    color: const Color(0xff191D21),
                                    border: Border.all(
                                        color: const Color(0xff191D21),
                                        width: 1.w)),
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffFFFFFF)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
