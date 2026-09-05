import 'package:flutter_test/flutter_test.dart';

class AbsoluteCelestialSovereignty {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteCelestialSovereignty({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class CelestialSovereigntyAbsolute {
  static const int maxCounter = 1000;
  int currentCounter;
  CelestialSovereigntyAbsolute({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class SovereigntyAbsoluteCelestial {
  static const int maxCounter = 1000;
  int currentCounter;
  SovereigntyAbsoluteCelestial({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}


void main() {
  group('AbsoluteCelestialSovereignty', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = AbsoluteCelestialSovereignty();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = AbsoluteCelestialSovereignty();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = AbsoluteCelestialSovereignty();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = AbsoluteCelestialSovereignty(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('CelestialSovereigntyAbsolute', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = CelestialSovereigntyAbsolute();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = CelestialSovereigntyAbsolute();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = CelestialSovereigntyAbsolute();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = CelestialSovereigntyAbsolute(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('SovereigntyAbsoluteCelestial', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = SovereigntyAbsoluteCelestial();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = SovereigntyAbsoluteCelestial();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = SovereigntyAbsoluteCelestial();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = SovereigntyAbsoluteCelestial(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

}
