import 'package:fitness_app/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    final isDark = Get.isDarkMode;

    return Scaffold(
      body: Center(
        child: Obx(
              () => AnimatedSwitcher(
            duration: const Duration(seconds: 2),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              );
            },
            child: _buildStage(
              controller.stage.value,
              isDark,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStage(int stage, bool isDark) {
    final textColor = isDark ? Colors.white : Colors.black;

    switch (stage) {

    // 🔹 STAGE 1 — ICON + BOOZIN FITNESS
      case 0:
        return Column(
          key: const ValueKey(2),
          mainAxisSize: MainAxisSize.min,
          children: [
            isDark ? Image.asset('assets/dark_logo.png', width: 100.w,) : Image.asset('assets/light_logo_1.png', width: 100.w,),
            SizedBox(height: 6.h),
            Text(
              'Fitness',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: textColor, // BLACK in light, WHITE in dark
              ),
            ),
          ],
        );

    // 🔹 STAGE 2 — ICON + BOOZIN
      case 1:
        return Row(
          key: const ValueKey(1),
          mainAxisSize: MainAxisSize.min,
          children: [
            isDark ? Image.asset('assets/dark_logo.png', width: 100.w,) : Image.asset('assets/light_logo_1.png', width: 100.w,),
          ],
        );

    // 🔹 STAGE 3 — ICON ONLY
      case 2:
        return Image.asset('assets/light_logo_2.png', key: const ValueKey(0), width: 120.w,);

      default:
        return const SizedBox();
    }
  }
}
