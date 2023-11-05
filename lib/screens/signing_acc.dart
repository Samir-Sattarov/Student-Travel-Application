import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

import 'concluding_screen.dart';


final TextEditingController controllerLogin = TextEditingController();
final TextEditingController controllerPassword = TextEditingController();
final GlobalKey<FormState> formkey = GlobalKey<FormState>();


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: child,
        );
      },
      child: SigningAccount(

      ),
    );
  }
}

class SigningAccount extends StatefulWidget {




  @override
  State<SigningAccount> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SigningAccount> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return KeyboardDismissOnTap(
      child: Scaffold(

        body: SafeArea(

          child: Column(
            children: [

              Container
                (width: 375.w, height: 346.h,
                  child: Center(child: Image.asset(Assets.tTravel))
              ),
              SizedBox(height: 27.h,),
              Container(
                padding: EdgeInsets.all(24),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        child: Text('Login', style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 32
                          )
                        ),),
                      ),
                      SizedBox(height: 10.h,),
                      TextFormField(
                        controller: controllerLogin,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if(value!.isEmpty ) {
                            return 'Введи login';
                          };
                         if(value.length < 4) {
                           return 'Login должен быть больше 4 символов';
                         }
                        },

                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.orange
                              )
                          ),
                          hintText: 'Login',
                          labelText: 'Enter you Login',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Color(0xffACB8C2)),
                          ),

                        ),
                      ),
                      SizedBox(height: 8.h,),
                      TextFormField(
                        controller: controllerPassword,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if(value == null) return null;

                          if(value.length < 8){
                            return 'В Password должен быть 8 символов';
                          }
                        },

                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Colors.orange
                          )
                          ),

                          hintText: 'Password',
                          labelText: 'Enter you Password',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
                      SizedBox(height: 24.h,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4).r,
                          color: Color(0xff191D21),
                        ),
                        child: InkWell(
                          onTap: () {
                            if(formkey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyConcludingScreen()));
                            }


                          },

                          child: Center(
                            child: Ink(
                              height: 57.h,
                              width: 327.w,
                              padding: EdgeInsets.only(
                                left: 135,

                              ),

                              child: Row(
                                children: [
                                  Text(
                                    'Log in', style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffFFFFFF)
                                      )
                                  ),
                                  ),
                                  SizedBox(width: 20.w,),
                                  Icon(Icons.arrow_right_alt_outlined, color: Colors.white, )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Container(

                       child:
                       Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('Forgot password', style: GoogleFonts.nunito(
                                 textStyle: TextStyle(
                                     color: Color(0xff656F77),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400
                                 ) ,
                               )),
                               SizedBox(width: 10.w,),
                               Text(
                                 'Get new',
                                 style: GoogleFonts.nunito(
                                     textStyle: TextStyle(
                                         color: Color(0xff191D21),
                                         fontWeight: FontWeight.w800
                                     )
                                 )
                               )


                             ],


                           ),
                           SizedBox(height: 8.h,),
                           Container(
                             width: 212.w,
                             child: Row(

                               mainAxisAlignment: MainAxisAlignment.spaceBetween,

                               children: [
                                 Text('Do you have an account?', style: GoogleFonts.nunito(
                                   textStyle: TextStyle(
                                       color: Color(0xff656F77),
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ) ,
                                 )),
                                  Text(
                                     'Create new',
                                     style: GoogleFonts.nunito(
                                         textStyle: TextStyle(
                                             color: Color(0xff191D21),
                                             fontWeight: FontWeight.w800
                                         )
                                     )
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),


                       ),


                    ],

                  ),
                ),

              )
            ],
          ),
        )
      ),
    );


  }
}
