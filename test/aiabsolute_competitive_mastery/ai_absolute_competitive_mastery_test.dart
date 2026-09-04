import 'package:flutter_test/flutter_test.dart';

class AbsoluteCompetitiveMastery {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteCompetitiveMastery({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class CompetitiveMasteryMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  CompetitiveMasteryMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class MasteryCompetitiveMetric {
  static const int maxCounter = 1000;
  int currentCounter;
  MasteryCompetitiveMetric({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('AbsoluteCompetitiveMastery', () {
    test('initializes with default counter', () { final metric = AbsoluteCompetitiveMastery(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = AbsoluteCompetitiveMastery(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = AbsoluteCompetitiveMastery(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('CompetitiveMasteryMetric', () {
    test('initializes with default counter', () { final metric = CompetitiveMasteryMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = CompetitiveMasteryMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = CompetitiveMasteryMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = CompetitiveMasteryMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = CompetitiveMasteryMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = CompetitiveMasteryMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = CompetitiveMasteryMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = CompetitiveMasteryMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = CompetitiveMasteryMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = CompetitiveMasteryMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('MasteryCompetitiveMetric', () {
    test('initializes with default counter', () { final metric = MasteryCompetitiveMetric(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = MasteryCompetitiveMetric(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = MasteryCompetitiveMetric(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = MasteryCompetitiveMetric(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = MasteryCompetitiveMetric(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = MasteryCompetitiveMetric(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = MasteryCompetitiveMetric(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = MasteryCompetitiveMetric(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = MasteryCompetitiveMetric(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = MasteryCompetitiveMetric(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });
}
