import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'payment_screen.dart';

class ServiceBookingScreen extends StatefulWidget {
  const ServiceBookingScreen({super.key});

  @override
  State<ServiceBookingScreen> createState() => _ServiceBookingScreenState();
}

class _ServiceBookingScreenState extends State<ServiceBookingScreen> {
  int selectedDate = 0;
  int selectedTimeSlot = 2; // Default time slot: '9:00 - 9:30am'

  final List<Map<String, String>> dates = [
    {'day': 'Today', 'date': '21'},
    {'day': 'Tomorrow', 'date': '22'},
    {'day': 'Wed', 'date': '23'},
    {'day': 'Thu', 'date': '24'},
  ];

  final List<String> timeSlots = [
    '8:00 - 8:30am',
    '8:30 - 9:00am',
    '9:00 - 9:30am',
    '9:30 - 10:00am',
    '10:00 - 10:30am',
    '10:30 - 11:00am',
    '11:00 - 11:30am',
    '11:30 - 12:00pm',
  ];

  DateTime? selectedCalendarDate;

  void _showDatePicker() async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedCalendarDate ?? now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)), // Limit to 1 year
    );

    if (picked != null) {
      setState(() {
        selectedCalendarDate = picked;
        // Add the new date dynamically to the list
        dates.add({
          'day': _formatDay(picked),
          'date': picked.day.toString(),
        });
        // Select the newly added date
        selectedDate = dates.length - 1;
      });
    }
  }

  String _formatDay(DateTime date) {
    // Convert a DateTime object to a formatted weekday (e.g., "Fri", "Sat")
    final days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    return days[date.weekday % 7];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
                padding: EdgeInsets.zero,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(height: 16),

              // Title
              Text('When do you want the service?',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.7),
                  )),
              const SizedBox(height: 24),

              // Date Selection
              Text('Select Date',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.7),
                  )),
              const SizedBox(height: 16),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dates.length + 1, // Extra item for calendar icon
                  itemBuilder: (context, index) {
                    if (index == dates.length) {
                      // Calendar Icon
                      return GestureDetector(
                        onTap: _showDatePicker,
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today, color: Colors.blue),
                              SizedBox(height: 4),
                              Text(
                                'Pick Date',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                        onTap: () => setState(() => selectedDate = index),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedDate == index
                                  ? Colors.blue.shade100
                                  : Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: selectedDate == index
                                ? Colors.blue.shade50
                                : Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dates[index]['day']!,
                                style: TextStyle(
                                  color: selectedDate == index
                                      ? Colors.blue
                                      : Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                dates[index]['date']!,
                                style: TextStyle(
                                  color: selectedDate == index
                                      ? Colors.blue
                                      : Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Time Slot Selection
              Text('Select Pick-up Time Slot',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.7),
                  )),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: timeSlots.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => setState(() => selectedTimeSlot = index),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedTimeSlot == index
                                ? Colors.blue.shade100
                                : Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: selectedTimeSlot == index
                              ? Colors.blue.shade50
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            timeSlots[index],
                            style: TextStyle(
                              color: selectedTimeSlot == index
                                  ? Colors.blue
                                  : Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Bottom Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Basic Service',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.7),
                          )),
                      Text('\$. 2,599',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.7),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 94.w,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Select >',
                        style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Book Inspection Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const PaymentScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Book Inspection',
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
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
