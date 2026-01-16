import 'package:fitness_app/app/data/services/health_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _service = HealthService();

  var steps = 0.obs;
  var calories = 0.0.obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    isLoading.value = true;
    steps.value = await _service.getSteps();
    calories.value = await _service.getCalories();
    isLoading.value = false;
  }
}
