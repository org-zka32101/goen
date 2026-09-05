import 'package:flutter_test/flutter_test.dart';

class SupremeInfiniteGlory {
  static const int maxCounter = 1000;
  int currentCounter;
  SupremeInfiniteGlory({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfiniteGlorySupreme {
  static const int maxCounter = 1000;
  int currentCounter;
  InfiniteGlorySupreme({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class GlorySupremeInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  GlorySupremeInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}


void main() {
  group('SupremeInfiniteGlory', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = SupremeInfiniteGlory();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = SupremeInfiniteGlory(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = SupremeInfiniteGlory(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = SupremeInfiniteGlory(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = SupremeInfiniteGlory(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = SupremeInfiniteGlory(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = SupremeInfiniteGlory();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = SupremeInfiniteGlory();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = SupremeInfiniteGlory(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = SupremeInfiniteGlory(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('InfiniteGlorySupreme', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = InfiniteGlorySupreme();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = InfiniteGlorySupreme(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = InfiniteGlorySupreme(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = InfiniteGlorySupreme(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = InfiniteGlorySupreme(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = InfiniteGlorySupreme(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = InfiniteGlorySupreme();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = InfiniteGlorySupreme();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = InfiniteGlorySupreme(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = InfiniteGlorySupreme(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('GlorySupremeInfinite', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = GlorySupremeInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = GlorySupremeInfinite(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = GlorySupremeInfinite(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = GlorySupremeInfinite(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = GlorySupremeInfinite(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = GlorySupremeInfinite(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = GlorySupremeInfinite();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = GlorySupremeInfinite();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = GlorySupremeInfinite(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = GlorySupremeInfinite(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

}
