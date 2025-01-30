import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'inspeaction_screen.dart';

class TeslaDetailScreen extends StatelessWidget {
  const TeslaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with back and share buttons
            Stack(
              children: [
                // Image carousel
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/tesla.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      // Play button overlay

                      // Thumbnail images
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Row(
                          children: [
                            _buildThumbnail(true),
                            const SizedBox(width: 10),
                            _buildThumbnail(false),
                            const SizedBox(width: 10),
                            _buildThumbnail(false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Back button
                // Positioned(
                //   top: 40,
                //   left: 20,
                //   child: Container(
                //     decoration: const BoxDecoration(
                //       color: Colors.white,
                //       shape: BoxShape.circle,
                //     ),
                //     child: IconButton(
                //       icon: const Icon(Icons.arrow_back),
                //       onPressed: () => Navigator.pop(context),
                //     ),
                //   ),
                // ),
                // Share button
                // Positioned(
                //   top: 40,
                //   right: 20,
                //   child: Container(
                //     decoration: const BoxDecoration(
                //       color: Colors.white,
                //       shape: BoxShape.circle,
                //     ),
                //     child: IconButton(
                //       icon: const Icon(Icons.share),
                //       onPressed: () {},
                //     ),
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tesla Model 3',
                          style: GoogleFonts.poppins(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                      Row(
                        children: [
                          Text(
                            '4.8',
                            style: GoogleFonts.poppins(
                              fontSize: 19.sp,
                              color: Colors.orange,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '/5',
                            style: GoogleFonts.poppins(
                              fontSize: 19.sp,
                              color: Colors.orange,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Icon(Icons.star, color: Colors.orange),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
// Price
                  Text(
                    '\$ 42,990.00',
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 20),
// Description

                  Wrap(
                    children: [
                      Text(
                        'The Tesla Model 3 is an electric sedan that offers impressive performance, cutting-edge technology, and a sleek design.',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Read more...',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),

// Features row
                  Row(
                    children: [
                      _buildFeatureChip(
                          'Autopilot', 'assets/images/check_box.png'),
                      const SizedBox(width: 10),
                      _buildFeatureChip(
                          '360° Camera', 'assets/images/check_box.png'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('See All'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
// Info rows
                  Row(
                    children: [
                      Expanded(
                          child: _buildInfoRow('assets/images/contactDelar.png',
                              'Contact Dealer')),
                      const SizedBox(width: 15),
                      Expanded(
                          child: _buildInfoRow('assets/images/carDealer.png',
                              'Car details (Model, 2023)')),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                          child: _buildInfoRow(
                              'assets/images/loaction.png', 'Melbourne, AUS')),
                      const SizedBox(width: 15),
                      Expanded(
                          child: _buildInfoRow(
                              'assets/images/loan.png', 'EMI/Loan Available')),
                    ],
                  ),

                  const SizedBox(height: 30),
                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const CarInspectionForm());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Continue to Inspection',
                        style: TextStyle(color: Colors.white, fontSize: 18.h),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThumbnail(bool isSelected) {
    return Container(
      width: 80,
      height: 60,
      decoration: BoxDecoration(
        border: isSelected ? Border.all(color: Colors.orange, width: 2) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/tesla.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFeatureChip(String label, String imagePath) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imagePath, color: Colors.white, width: 18, height: 18),
          //Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String imagePath, String text) {
    return Row(
      children: [
        Image.asset(imagePath, width: 18, height: 18),
        //Icon(icon, color: Colors.grey),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
