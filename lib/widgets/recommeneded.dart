// Previous imports remain the same
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/home/car_details_screen.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Previous screen size calculations remain the same
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final List<Map<String, String>> categories = [
      {
        "categoryImg": 'assets/images/AudiCar.png',
        "categoryName": 'Audi e-tron Premium',
        "originalPrice": '80000', // Original price in USD
        "flashPrice": '75000', // Flash sale price in USD
      },
      {
        "categoryImg": 'assets/images/swiftCar.png',
        "categoryName": 'Suzuki Swift',
        "originalPrice": '16000', // Original price in USD
        "flashPrice": '15000', // Flash sale price in USD
      },
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: screenHeight / 3.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                // Action for tapping on category
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                child: Container(
                  width: screenWidth / 2.3,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Wrap the image in a Stack for overlaying icons
                      Stack(
                        children: [
                          // Image remains the same
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            child: Image.asset(
                              categories[index]['categoryImg']!,
                              height: screenHeight / 4.9,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Add the 360 View text and cube icon
                          Positioned(
                            top: 6.h,
                            left: 4.w,
                            child: Row(
                              children: [
                                Text(
                                  '360 View',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.view_in_ar,
                                  color: Colors.black,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          // Add the heart icon
                          Positioned(
                            top: 2.h,
                            right: 4.w,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                          ),
                          // Add the play button
                          Positioned(
                            bottom: 2.h,
                            left: 2.w,
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => const TeslaDetailScreen());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Colors.deepOrange,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      // Rest of the content remains the same
                      Text(
                        categories[index]['categoryName']!,
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        'Price: \$${categories[index]['flashPrice']}',
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
