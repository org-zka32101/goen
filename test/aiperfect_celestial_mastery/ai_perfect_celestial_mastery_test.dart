import 'package:flutter_test/flutter_test.dart';

class PerfectCelestialMastery {
  static const int maxCounter = 1000;
  int currentCounter;
  PerfectCelestialMastery({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class CelestialMasteryMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  CelestialMasteryMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class MasteryCelestialMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  MasteryCelestialMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('PerfectCelestialMastery', () {
    test('initializes with default counter', () { final metric = PerfectCelestialMastery(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = PerfectCelestialMastery(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = PerfectCelestialMastery(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = PerfectCelestialMastery(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = PerfectCelestialMastery(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = PerfectCelestialMastery(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = PerfectCelestialMastery(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = PerfectCelestialMastery(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = PerfectCelestialMastery(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = PerfectCelestialMastery(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('CelestialMasteryMetric', () {
    test('initializes with default counter', () { final metric = CelestialMasteryMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = CelestialMasteryMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = CelestialMasteryMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = CelestialMasteryMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = CelestialMasteryMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = CelestialMasteryMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = CelestialMasteryMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = CelestialMasteryMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = CelestialMasteryMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = CelestialMasteryMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('MasteryCelestialMetric', () {
    test('initializes with default counter', () { final metric = MasteryCelestialMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = MasteryCelestialMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = MasteryCelestialMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = MasteryCelestialMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = MasteryCelestialMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = MasteryCelestialMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = MasteryCelestialMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = MasteryCelestialMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = MasteryCelestialMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = MasteryCelestialMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });
}
