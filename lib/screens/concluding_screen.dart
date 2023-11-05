import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

class MyConcludingScreen extends StatefulWidget {
  const MyConcludingScreen({super.key});

  @override
  State<MyConcludingScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyConcludingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffCFFFF6),
          child: Column(
            children: [
              SizedBox(height: 48.h),
              Image.asset(Assets.tPonchik),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Find your Roomie',
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.w800)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'We\'ve helped millions across the nation ',
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff656F77))),
              ),
              Text(
                'find their perfect match... and you\'re next! ',
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff656F77))),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4).r,
                  color: const Color(0xff191D21),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    height: 57.h,
                    width: 343.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Let\'s go',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              )
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(4).r,
              //     color: Color(0xff191D21),
              //   ),
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(context, MaterialPageRoute(builder: (context) => MyConcludingScreen()));
              //
              //     },
              //     child: Center(
              //       child: Ink(
              //         height: 57.h,
              //         width: 327.w,
              //         padding: EdgeInsets.only(
              //           left: 135,
              //
              //         ),
              //
              //         child: Row(
              //           children: [
              //             Text(
              //               'Log in', style: GoogleFonts.nunito(
              //                 textStyle: TextStyle(
              //                     fontSize: 16.sp,
              //                     fontWeight: FontWeight.w600,
              //                     color: Color(0xffFFFFFF)
              //                 )
              //             ),
              //             ),
              //             SizedBox(width: 20.w,),
              //             Icon(Icons.arrow_right_alt_outlined, color: Colors.white, )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
