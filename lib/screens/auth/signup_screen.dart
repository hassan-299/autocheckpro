import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    padding: EdgeInsets.only(top: Get.height * 0.06),
                    child: SvgPicture.asset('assets/svgs/login_icon.svg',
                        width: Get.width * 0.18),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.08),
                      child: Column(
                        children: [
                          Text(
                            'Sign Up',
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
                            'Find your dream car!',
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

                  //name
                  TextField(
                    keyboardType: TextInputType.text,
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
                      labelText: 'Full Name',
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

                  //Email address
                  TextField(
                    keyboardType: TextInputType.emailAddress,
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
                      labelText: 'Email address',
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF7F7F7F), // Grey color
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/images/emalIcon.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  //phone
                  TextField(
                    keyboardType: TextInputType.phone,
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
                      labelText: 'Phone number',
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF7F7F7F), // Grey color
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/images/phoenIcon.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
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
                    height: Get.height * 0.04,
                  ),

                  GestureDetector(
                    onTap: () => Get.to(
                      () => const LoginScreen(),
                    ),
                    child: Container(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFF5C00),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
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
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                      ),
                      const Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  // Social media icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialButton('assets/images/facebook.png'),
                      const SizedBox(width: 20),
                      _socialButton('assets/images/instagram.png'),
                      const SizedBox(width: 20),
                      _socialButton('assets/images/youtube.png'),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Sign in text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(0xFFFF5722), // Orange color
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _socialButton(String iconPath) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: IconButton(
        icon: Image.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        onPressed: () {
          // Add social media sign up logic
        },
      ),
    );
  }
}
