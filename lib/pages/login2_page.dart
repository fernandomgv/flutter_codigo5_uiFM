import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1E1C2A),
        body: Stack(children: [
          Stack(children: [
            Positioned(
              left: 40,
              top: -40,
              child: Transform.rotate(
                angle: -pi / 3,
                child: Container(
                  width: 200,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: kColorSecondaryLogin,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          ]),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF1B2C31),
                    ),
                    child:
                    SvgPicture.asset('assets/icons/bx-home-alt.svg',
                        color: kColorSecondaryLogin,
                      //height: 20,
                    ),
                  ),
                  Text("Let's log you in",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome back You've been missed!",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.37)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Botones
                  /*
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          //height: 30,
                          //width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFFEA4335),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset('assets/icons/bxl-google.svg',
                                  color: Colors.white,
                                ),
                              ),
                              Text("Google",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          //height: 30,
                          //width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFF1877F2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset('assets/icons/bxl-facebook.svg',
                                  color: Colors.white,
                                ),
                              ),
                              Text("Facebook",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  */
                  SizedBox(height: 30,),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.35),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      filled: true,
                      fillColor: Color(0xff25283A),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xff25283A),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.35),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      filled: true,
                      fillColor: Color(0xff25283A),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xff25283A),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(null),
                          onPressed: (){},
                           label: Container(
                             margin: EdgeInsets.symmetric(vertical: 15),
                             child: Text("Log in"),
                           )  ,
                          style: ElevatedButton.styleFrom(
                            primary: kColorTertiaryLogin,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Forget Password?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF1F75B0)
                      ),),]
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have on Account?",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(0.37)
                        ),),
                      SizedBox(width: 20,),
                      Text("Sing in",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF1F75B0)
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
