import 'package:flutter_test/flutter_test.dart';

class AbsoluteCosmicMastery {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteCosmicMastery({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class CosmicMasteryAbsolute {
  static const int maxCounter = 1000;
  int currentCounter;
  CosmicMasteryAbsolute({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class MasteryAbsoluteCosmic {
  static const int maxCounter = 1000;
  int currentCounter;
  MasteryAbsoluteCosmic({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('AbsoluteCosmicMastery', () {
    test('initializes with default counter', () {
      final metric = AbsoluteCosmicMastery();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = AbsoluteCosmicMastery(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = AbsoluteCosmicMastery(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('CosmicMasteryAbsolute', () {
    test('initializes with default counter', () {
      final metric = CosmicMasteryAbsolute();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = CosmicMasteryAbsolute(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = CosmicMasteryAbsolute(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('MasteryAbsoluteCosmic', () {
    test('initializes with default counter', () {
      final metric = MasteryAbsoluteCosmic();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = MasteryAbsoluteCosmic(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = MasteryAbsoluteCosmic(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
