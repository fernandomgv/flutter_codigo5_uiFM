import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/constants.dart';

class Login3Page extends StatelessWidget {
  const Login3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                top: -150,
                right: -150,
                child: MyCircleWidget(
                  radius: 200,
                  colors: [
                    Color(0xffD74286),
                    Color(0xffE991B9),
                  ],
                ),
              ),
              Positioned(
                bottom: -150,
                left: -100,
                child: MyCircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff4E398B),
                    Color(0xff9C89D9),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                left: 30,
                child: MyCircleWidget(
                  radius: 20,
                  colors: [
                    Color(0xff4E398B),
                    Color(0xff9C89D9),
                  ],
                ),
              ),
            ],
          ),
          //Formulario
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Create Your Account!",
                        style: TextStyle(
                            color: kColorPrimaryLogin2,
                            fontSize: 38.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: kColorPrimaryLogin2.withOpacity(0.4),
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: kColorPrimaryLogin2.withOpacity(0.70),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kColorPrimaryLogin2.withOpacity(0.8),
                              width: 1.4,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kColorPrimaryLogin2.withOpacity(0.8),
                              width: 1.4,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: kColorPrimaryLogin2.withOpacity(0.4),
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: kColorPrimaryLogin2.withOpacity(0.70),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                            color: kColorPrimaryLogin2.withOpacity(0.70),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kColorPrimaryLogin2.withOpacity(0.8),
                              width: 1.4,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kColorPrimaryLogin2.withOpacity(0.8),
                              width: 1.4,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        height: 58.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(40.0),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xffD9488A),
                                Color(0xffD780A7),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffD9488A).withOpacity(0.75),
                                  offset: const Offset(6, 6),
                                  blurRadius: 20.0),
                            ]),
                        alignment: Alignment.center,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Container(
                      //   color: Colors.red,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       elevation: 0,
                      //       primary: Colors.transparent,
                      //     ),
                      //     child: Text(
                      //       "Create Account",
                      //     ),
                      //   ),
                      // ),



                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;

  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0].withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}