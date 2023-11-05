import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';
import 'package:student_travel_application/screens/signing_account.dart';

class LoginSecondScreen extends StatefulWidget {
  const LoginSecondScreen({super.key});

  @override
  State<LoginSecondScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffCBE3FF),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Text(
                  'Find the Perfect',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w800,
                  )),
                ),
                Text(
                  'Rommate',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w800,
                  )),
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4).r,
                        color: const Color(0xff191D21),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          height: 40.h,
                          width: 163.5.w,
                          padding: const EdgeInsets.only(
                            left: 61,
                            top: 8.5,
                          ),
                          child: Text(
                            'Explore',
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffFFFFFF))),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).r,
                          color: const Color(0xffFFFFFF),
                          border: Border.all(
                              width: 1, color: const Color(0xff191D21))),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SigningAccount()));
                        },
                        child: Ink(
                          height: 40.h,
                          width: 163.5.w,
                          padding: const EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Log in',
                                style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff191D21))),
                              ),
                              const Icon(Icons.arrow_drop_down_rounded)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 65),
                  color: const Color(0xffCBE3FF),
                  child: Column(
                    children: [Image.asset(Assets.tStanding)],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
