import 'package:fitness_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final isDark = Get.isDarkMode;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48.h),

            Text(
              "Hi!",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 24.h),

            /// Steps Card
            Obx(() => _fitnessCard(
              title: "Steps",
              value: controller.steps.value.toString(),
              progress: controller.steps.value / 15000,
              goal: "15,000",
              isDark: isDark,
              number: 1,
            )),

            SizedBox(height: 20.h),

            /// Calories Card
            Obx(() => _fitnessCard(
              title: "Calories Burned",
              value: controller.calories.value.toStringAsFixed(0),
              progress: controller.calories.value / 1000,
              goal: "1000",
              isDark: isDark,
              number: 2,
            )),
          ],
        ),
      ),
    );
  }

  Widget _fitnessCard({
    required String title,
    required String value,
    required double progress,
    required String goal,
    required bool isDark,
    required int number,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2C2C2C) : const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// LEFT CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title + Value
                Text(
                  "$title: $value",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 14.h),

                /// Progress Bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: LinearProgressIndicator(
                    value: progress.clamp(0.0, 1.0),
                    minHeight: 18.h,
                    backgroundColor: isDark
                        ? Colors.white.withOpacity(0.25)
                        : Colors.black.withOpacity(0.25),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                /// Bottom labels
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: isDark ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Goal: $goal",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: isDark ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// RIGHT ICON (CENTERED)
          SizedBox(width: 16.w),

          SizedBox(
            width: 44.w,
            height: 44.w,
            child: Center(
              child: Image.asset(
                number == 1
                    ? (isDark
                    ? 'assets/dark_theme_foots.png'
                    : 'assets/light_theme_foots.png')
                    : (isDark
                    ? 'assets/dark_theme_kcal.png'
                    : 'assets/light_theme_kcal.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }


}
