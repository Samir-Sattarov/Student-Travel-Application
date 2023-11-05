import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

import 'concluding_screen.dart';

class SigningAccount extends StatefulWidget {
  const SigningAccount({super.key});

  @override
  State<SigningAccount> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SigningAccount> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: 375.w,
                height: 346.h,
                child: Center(child: Image.asset(Assets.tTravel))),
            SizedBox(
              height: 27.h,
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 32)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Login',
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Color(0xffACB8C2)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff656F77),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4).r,
                      color: const Color(0xff191D21),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyConcludingScreen()));
                      },
                      child: Center(
                        child: Ink(
                          height: 57.h,
                          width: 327.w,
                          padding: const EdgeInsets.only(
                            left: 135,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Log in',
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffFFFFFF))),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              const Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Forgot password',
                          style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                color: Color(0xff656F77),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('Get new',
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Color(0xff191D21),
                                  fontWeight: FontWeight.w800)))
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    width: 220.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Do you have an account?',
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Color(0xff656F77),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )),
                        Text('Create new',
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                    color: Color(0xff191D21),
                                    fontWeight: FontWeight.w800))),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
