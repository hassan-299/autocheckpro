import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/banner.dart';
import '../../widgets/drawer.dart';
import '../../widgets/heading_widget.dart';
import '../../widgets/recommended2.dart';
import '../../widgets/recommeneded.dart';
import '../../widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/images/message.png'),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          'AutoCheck Pro',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFFF5C00), // Blue color for 'Back'
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search Row
              const SearchWidget(),
              //banner widget
              const BannerWidget(),
              //heading widget
              HeadingWidget(
                buttonText: "See All",
                headingTitle: "Recommended",
                onTap: () {},
              ),
              //recommended widget
              const RecommendedWidget(),
              const RecommendedWidget2()
              //
            ],
          ),
        ),
      ),
    );
  }
}
