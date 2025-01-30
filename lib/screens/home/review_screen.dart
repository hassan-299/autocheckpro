import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/bottoma_nav_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Back button action
          },
        ),
        title: const SizedBox.shrink(),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Score Section
              Text(
                'Score:',
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star_border,
                    color: Colors.grey,
                    size: 32,
                  ),
                ),
              ),
              SizedBox(height: 16.sp),

              // Title Input
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
                style: GoogleFonts.poppins(fontSize: 14.sp),
              ),
              SizedBox(height: 16.h),

              // Review Input
              TextField(
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Review:',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
                style: GoogleFonts.poppins(fontSize: 14.sp),
              ),
              SizedBox(height: 16.h),

              // Add Image/Attachment Button
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Username Input
              TextField(
                decoration: const InputDecoration(
                  labelText: '*Username:',
                  hintText: 'Value',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
                style: GoogleFonts.poppins(fontSize: 14.sp),
              ),
              SizedBox(height: 16.h),

              // Email Input
              TextField(
                decoration: const InputDecoration(
                  labelText: '*Email:',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
                style: GoogleFonts.poppins(fontSize: 14.sp),
              ),
              SizedBox(height: 32.h),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    // Show the success dialog
                    showDialog(
                      context: context,
                      barrierDismissible:
                          false, // Prevent dismissal by tapping outside
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Colors.deepOrange,
                                size: 50,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Review Submitted Successfully!',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    );

                    // Navigate to HomeScreen() after 3 seconds
                    Future.delayed(const Duration(seconds: 2), () {
                      Get.back();
                      Get.offAll(() => const BottomNavigation());
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Submit review',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
