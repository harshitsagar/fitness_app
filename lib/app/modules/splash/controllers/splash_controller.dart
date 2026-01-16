import 'package:fitness_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var stage = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    stage.value = 1;

    await Future.delayed(const Duration(seconds: 2));
    stage.value = 2;

    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.HOME);
  }
}
