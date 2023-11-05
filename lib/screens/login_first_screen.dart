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
      child: MyLoginfirstscreen(

      ),
    );
  }
}

class MyLoginfirstscreen extends StatefulWidget {




  @override
  State<MyLoginfirstscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoginfirstscreen> {
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
          padding: EdgeInsets.only(
            top: 40
          ),

          child: Column(
            children: [
              Container(
                height: 709.1.h,
                width: 375.w,
                child: Column(

                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset(Assets.TAva),
                          Text('Find a Roomie', style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w800,
                              )
                          )
                          ),
                          SizedBox(height: 16,),
                          Text('We\'ve helped millions across the nation find ', style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff656F77)
                              )
                          ),),
                          Text('their perfect match... and you\'re next' , style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff656F77)
                              )
                          )),
                          SizedBox(height: 50,),
                          Container(
                            width: 60.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 16.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffFFAC4B)
                                  ),
                                ),
                                Container(
                                  width: 6.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffACB8C2)
                                  ),
                                ),
                                Container(
                                  width: 6.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xffACB8C2)
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                              top: 20
                            ),

                            width: 343.w,
                            height: 104.1.h,

                            padding: EdgeInsets.only(
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
                                    padding: EdgeInsets.only(left: 55, top: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4).r,
                                        border: Border.all(
                                          color: Color(0xff191D21),
                                          width: 1,
                                        )
                                    ),
                                    child: GestureDetector(
                                      onTap: () {

                                      },
                                      child: Text('Skip', style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 23.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff191D21)
                                        ), ),



                                      ),
                                    )
                                ),
                                Container(

                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginsecondscreen()));
                                      },
                                    child: Ink(
                                      height: 56.1.h,
                                      width: 147.5.w,
                                      padding: EdgeInsets.only(left: 50, top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4).r,
                                        color:  Color(0xff191D21),
                                        border: Border.all(
                                          color: Color(0xff191D21),
                                          width: 1.w
                                        )
                                      ),
                                      child: Text('Next', style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)
                                     ),),
                                    ),
                                  ),
                                ),
                                ),

                              ],
                            ),
                          )

                        ],

                      ),

                    )
                  ],

                ),

              )


            ],
          ),
        ),
      ),

    );
  }
}
