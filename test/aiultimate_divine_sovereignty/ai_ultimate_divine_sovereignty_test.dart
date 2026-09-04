import 'package:flutter_test/flutter_test.dart';

class UltimateDivineSovereignty {
  static const int maxCounter = 1000;
  int currentCounter;
  UltimateDivineSovereignty({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class DivineSovereigntyUltimate {
  static const int maxCounter = 1000;
  int currentCounter;
  DivineSovereigntyUltimate({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class SovereigntyDivineUltimate {
  static const int maxCounter = 1000;
  int currentCounter;
  SovereigntyDivineUltimate({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('UltimateDivineSovereignty', () {
    test('initializes with default counter', () { final metric = UltimateDivineSovereignty(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = UltimateDivineSovereignty(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = UltimateDivineSovereignty(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = UltimateDivineSovereignty(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = UltimateDivineSovereignty(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = UltimateDivineSovereignty(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = UltimateDivineSovereignty(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = UltimateDivineSovereignty(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = UltimateDivineSovereignty(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = UltimateDivineSovereignty(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('DivineSovereigntyUltimate', () {
    test('initializes with default counter', () { final metric = DivineSovereigntyUltimate(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = DivineSovereigntyUltimate(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = DivineSovereigntyUltimate(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = DivineSovereigntyUltimate(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = DivineSovereigntyUltimate(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = DivineSovereigntyUltimate(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = DivineSovereigntyUltimate(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = DivineSovereigntyUltimate(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = DivineSovereigntyUltimate(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = DivineSovereigntyUltimate(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });

  group('SovereigntyDivineUltimate', () {
    test('initializes with default counter', () { final metric = SovereigntyDivineUltimate(); expect(metric.currentCounter, 0); expect(metric.calculateAccuracy(), 100.0); });
    test('initializes with custom counter', () { final metric = SovereigntyDivineUltimate(currentCounter: 250); expect(metric.calculateAccuracy(), 75.0); });
    test('calculates accuracy correctly', () { final metric = SovereigntyDivineUltimate(currentCounter: 500); expect(metric.calculateAccuracy(), 50.0); });
    test('accuracy reaches zero at max counter', () { final metric = SovereigntyDivineUltimate(currentCounter: 1000); expect(metric.calculateAccuracy(), 0.0); });
    test('threshold validation passes for high accuracy', () { final metric = SovereigntyDivineUltimate(currentCounter: 100); expect(metric.isWithinThreshold(90.0), true); });
    test('threshold validation fails for low accuracy', () { final metric = SovereigntyDivineUltimate(currentCounter: 900); expect(metric.isWithinThreshold(50.0), false); });
    test('accuracy boundary at 75 percent', () { final metric = SovereigntyDivineUltimate(currentCounter: 250); expect(metric.isWithinThreshold(75.0), true); });
    test('fractional counter updates accuracy', () { final metric = SovereigntyDivineUltimate(currentCounter: 333); expect(metric.calculateAccuracy(), closeTo(66.7, 0.1)); });
    test('formula consistency across counter range', () { for (int i = 0; i <= 1000; i += 100) { final metric = SovereigntyDivineUltimate(currentCounter: i); expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001)); } });
    test('edge case: counter exceeds max gracefully', () { final metric = SovereigntyDivineUltimate(currentCounter: 1500); expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001)); });
  });
}
