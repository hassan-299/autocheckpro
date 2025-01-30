import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/bottoma_nav_bar.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * 0.12),
                    child: SvgPicture.asset('assets/svgs/login_icon.svg',
                        width: Get.width * 0.18),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.08),
                      child: Column(
                        children: [
                          Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(
                                    0xFF040415), // Blue color for 'Back'
                              ),
                            ),
                          ),
                          Text(
                            'Welcome to AutoCheck Pro',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(
                                    0xFF000000), // Blue color for 'Back'
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius here
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Radius for enabled state
                        borderSide: const BorderSide(
                            color: Color(0xFF7F7F7F)), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Radius for focused state
                        borderSide: const BorderSide(
                            color: Color(0xFF6495ED),
                            width: 2), // Highlight border
                      ),
                      labelText: 'Username',
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF7F7F7F), // Grey color
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SvgPicture.asset(
                          'assets/svgs/user_icon.svg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Add border radius here
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Radius for enabled state
                        borderSide: const BorderSide(
                            color: Color(0xFF7F7F7F)), // Border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Radius for focused state
                        borderSide: const BorderSide(
                            color: Color(0xFF6495ED),
                            width: 2), // Highlight border
                      ),
                      labelText: 'Password',
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF7F7F7F), // Grey color
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SvgPicture.asset(
                          'assets/svgs/password_icon.svg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  GestureDetector(
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF040415), // Grey color
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => const BottomNavigation());
                    },
                    child: Container(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFF5C00),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Wrap(
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 14.sp),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF7F7F7F),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignUpScreen());
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(fontSize: 14.sp),
                            color: const Color(0xFFFF5C00),
                          ), // Change color for 'help'
                        ),
                      ),
                    ],
                  )
                  // RichText(
                  //   textAlign: TextAlign.center,
                  //   text: TextSpan(
                  //     text: 'Don’t have an account? ',
                  // style: GoogleFonts.poppins(
                  //   textStyle: TextStyle(fontSize: 14.sp),
                  //   fontWeight: FontWeight.w400,
                  //   color: const Color(0xFF7F7F7F),
                  // ),
                  //     children: const <TextSpan>[
                  //       TextSpan(
                  //   text: 'Sign Up',
                  //   style: TextStyle(
                  //       color:
                  //           Color(0xFFFF5C00)), // Change color for 'help'
                  // ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
