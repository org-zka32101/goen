import 'package:flutter_test/flutter_test.dart';

class AbsoluteHeavenlyPerfection {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteHeavenlyPerfection({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class HeavenlyPerfectionMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  HeavenlyPerfectionMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class PerfectionHeavenlyMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  PerfectionHeavenlyMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('AbsoluteHeavenlyPerfection', () {
    test('initializes with default counter', () { final metric = AbsoluteHeavenlyPerfection(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = AbsoluteHeavenlyPerfection(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = AbsoluteHeavenlyPerfection(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('HeavenlyPerfectionMetric', () {
    test('initializes with default counter', () { final metric = HeavenlyPerfectionMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = HeavenlyPerfectionMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = HeavenlyPerfectionMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = HeavenlyPerfectionMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = HeavenlyPerfectionMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = HeavenlyPerfectionMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = HeavenlyPerfectionMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = HeavenlyPerfectionMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = HeavenlyPerfectionMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = HeavenlyPerfectionMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('PerfectionHeavenlyMetric', () {
    test('initializes with default counter', () { final metric = PerfectionHeavenlyMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = PerfectionHeavenlyMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = PerfectionHeavenlyMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = PerfectionHeavenlyMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = PerfectionHeavenlyMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = PerfectionHeavenlyMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = PerfectionHeavenlyMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = PerfectionHeavenlyMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = PerfectionHeavenlyMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = PerfectionHeavenlyMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });
}
