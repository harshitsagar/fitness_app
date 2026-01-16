import 'dart:math';

class HealthService {
  /// Simulated steps (Google Fit placeholder)
  Future<int> getSteps() async {
    await Future.delayed(const Duration(seconds: 1));
    return 13112; // realistic daily steps
  }

  /// Simulated calories (Google Fit placeholder)
  Future<double> getCalories() async {
    await Future.delayed(const Duration(seconds: 1));
    return 500; // kcal
  }
}
