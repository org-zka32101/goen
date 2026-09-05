import 'package:flutter_test/flutter_test.dart';

class EternalInfinitePerfection {
  static const int maxCounter = 1000;
  int currentCounter;
  EternalInfinitePerfection({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfinitePerfectionEternal {
  static const int maxCounter = 1000;
  int currentCounter;
  InfinitePerfectionEternal({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class PerfectionEternalInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  PerfectionEternalInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('EternalInfinitePerfection', () {
    test('initializes with default counter', () {
      final metric = EternalInfinitePerfection();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = EternalInfinitePerfection(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = EternalInfinitePerfection(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = EternalInfinitePerfection(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = EternalInfinitePerfection(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = EternalInfinitePerfection(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = EternalInfinitePerfection(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = EternalInfinitePerfection(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = EternalInfinitePerfection(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = EternalInfinitePerfection(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('InfinitePerfectionEternal', () {
    test('initializes with default counter', () {
      final metric = InfinitePerfectionEternal();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = InfinitePerfectionEternal(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = InfinitePerfectionEternal(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = InfinitePerfectionEternal(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = InfinitePerfectionEternal(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = InfinitePerfectionEternal(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = InfinitePerfectionEternal(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = InfinitePerfectionEternal(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = InfinitePerfectionEternal(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = InfinitePerfectionEternal(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('PerfectionEternalInfinite', () {
    test('initializes with default counter', () {
      final metric = PerfectionEternalInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = PerfectionEternalInfinite(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = PerfectionEternalInfinite(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = PerfectionEternalInfinite(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = PerfectionEternalInfinite(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = PerfectionEternalInfinite(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = PerfectionEternalInfinite(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = PerfectionEternalInfinite(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = PerfectionEternalInfinite(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = PerfectionEternalInfinite(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
