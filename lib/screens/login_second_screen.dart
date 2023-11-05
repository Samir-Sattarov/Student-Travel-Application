import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';
import 'package:student_travel_application/screens/signing_acc.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      child: MyLoginsecondscreen(

      ),
    );
  }
}

class MyLoginsecondscreen extends StatefulWidget {




  @override
  State<MyLoginsecondscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoginsecondscreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffCBE3FF),
          child: Column(

            children: [
              Container(
                height: 752.h,
                width: 375.w,
                padding: EdgeInsets.all(16),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find the Perfect', style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w800,
                        )
                      ),),
                      Text('Rommate', style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w800,
                          )
                      ),),
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
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4).r,
                              color: Color(0xff191D21),
                            ),
                            child: InkWell(
                              onTap: () {

                              },
                              child: Ink(
                                height: 40.h,
                                width: 163.5.w,
                                padding: EdgeInsets.only(
                                  left: 61,
                                  top: 8.5,
                                ),

                                child: Text(
                                  'Explore', style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)
                                  )
                                ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4).r,
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff191D21)
                              )
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SigningAccount()));
                              },
                              child: Ink(
                                height: 40.h,
                                width: 163.5.w,
                                padding: EdgeInsets.only(

                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Log in', style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff191D21)
                                        )

                                    ),
                                      

                                    ),
                                    Icon(Icons.arrow_drop_down_rounded)

                                  ],
                                ),

                              ),
                            ),
                          )
                        ],
                      ),


                      Container(
                        padding: EdgeInsets.only(top:35),
                        color: Color(0xffCBE3FF),
                        child: Column(
                          children: [
                            Image.asset(Assets.tStanding)
                          ],
                        ),
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
