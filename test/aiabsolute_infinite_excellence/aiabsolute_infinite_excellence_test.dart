import 'package:flutter_test/flutter_test.dart';

class AbsoluteInfiniteExcellence {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteInfiniteExcellence({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfiniteExcellenceAbsolute {
  static const int maxCounter = 1000;
  int currentCounter;
  InfiniteExcellenceAbsolute({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class ExcellenceAbsoluteInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  ExcellenceAbsoluteInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}


void main() {
  group('AbsoluteInfiniteExcellence', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = AbsoluteInfiniteExcellence();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = AbsoluteInfiniteExcellence();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = AbsoluteInfiniteExcellence();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = AbsoluteInfiniteExcellence(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('InfiniteExcellenceAbsolute', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = InfiniteExcellenceAbsolute();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = InfiniteExcellenceAbsolute();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = InfiniteExcellenceAbsolute();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = InfiniteExcellenceAbsolute(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('ExcellenceAbsoluteInfinite', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = ExcellenceAbsoluteInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = ExcellenceAbsoluteInfinite();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = ExcellenceAbsoluteInfinite();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = ExcellenceAbsoluteInfinite(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

}
