import 'package:flutter_test/flutter_test.dart';

class AbsoluteInfiniteMastery {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteInfiniteMastery({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfiniteMasteryAbsolute {
  static const int maxCounter = 1000;
  int currentCounter;
  InfiniteMasteryAbsolute({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class MasteryAbsoluteInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  MasteryAbsoluteInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}


void main() {
  group('AbsoluteInfiniteMastery', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = AbsoluteInfiniteMastery();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = AbsoluteInfiniteMastery();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = AbsoluteInfiniteMastery();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = AbsoluteInfiniteMastery(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('InfiniteMasteryAbsolute', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = InfiniteMasteryAbsolute();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = InfiniteMasteryAbsolute();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = InfiniteMasteryAbsolute();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = InfiniteMasteryAbsolute(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('MasteryAbsoluteInfinite', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = MasteryAbsoluteInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = MasteryAbsoluteInfinite();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = MasteryAbsoluteInfinite();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = MasteryAbsoluteInfinite(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

}
