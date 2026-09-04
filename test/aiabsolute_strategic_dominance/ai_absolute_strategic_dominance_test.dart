import 'package:flutter_test/flutter_test.dart';

class AbsoluteDominanceMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteDominanceMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class StrategicDominanceMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  StrategicDominanceMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class DominanceSupremacyMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  DominanceSupremacyMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('AbsoluteDominanceMetric', () {
    test('initializes with default counter', () { final metric = AbsoluteDominanceMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = AbsoluteDominanceMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = AbsoluteDominanceMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = AbsoluteDominanceMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = AbsoluteDominanceMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = AbsoluteDominanceMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = AbsoluteDominanceMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = AbsoluteDominanceMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = AbsoluteDominanceMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = AbsoluteDominanceMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('StrategicDominanceMetric', () {
    test('initializes with default counter', () { final metric = StrategicDominanceMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = StrategicDominanceMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = StrategicDominanceMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = StrategicDominanceMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = StrategicDominanceMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = StrategicDominanceMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = StrategicDominanceMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = StrategicDominanceMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = StrategicDominanceMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = StrategicDominanceMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('DominanceSupremacyMetric', () {
    test('initializes with default counter', () { final metric = DominanceSupremacyMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = DominanceSupremacyMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = DominanceSupremacyMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = DominanceSupremacyMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = DominanceSupremacyMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = DominanceSupremacyMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = DominanceSupremacyMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = DominanceSupremacyMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = DominanceSupremacyMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = DominanceSupremacyMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });
}
