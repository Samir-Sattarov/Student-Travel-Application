import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

import 'login_second_screen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: MyConcludingScreen(

      ),
    );
  }
}

class MyConcludingScreen extends StatefulWidget {




  @override
  State<MyConcludingScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyConcludingScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffCFFFF6),

          child: Column(
            children: [
              SizedBox(height: 48.h),
              Image.asset(Assets.tPonchik),
              SizedBox(height: 20.h,),
              Text('Find your Roomie', style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800
                )
              ),),
              SizedBox(height: 16.h,),
              Text('We\'ve helped millions across the nation ', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff656F77)
                  )
              ),),
              Text('find their perfect match... and you\'re next! ', style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff656F77)
                  )
              ),),
              SizedBox(height: 35.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4).r,
                  color: Color(0xff191D21),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Ink(
                    height: 57.h,
                    width: 343.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Let\'s go', style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600
                          )
                       ),)
                      ],
                    ),
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
