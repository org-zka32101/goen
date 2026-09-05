import 'package:flutter_test/flutter_test.dart';

class PerfectBoundlessAuthority {
  static const int maxCounter = 1000;
  int currentCounter;
  PerfectBoundlessAuthority({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class BoundlessAuthorityPerfect {
  static const int maxCounter = 1000;
  int currentCounter;
  BoundlessAuthorityPerfect({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class AuthorityPerfectBoundless {
  static const int maxCounter = 1000;
  int currentCounter;
  AuthorityPerfectBoundless({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}


void main() {
  group('PerfectBoundlessAuthority', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = PerfectBoundlessAuthority();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = PerfectBoundlessAuthority();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = PerfectBoundlessAuthority();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = PerfectBoundlessAuthority(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = PerfectBoundlessAuthority(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('BoundlessAuthorityPerfect', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = BoundlessAuthorityPerfect();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = BoundlessAuthorityPerfect();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = BoundlessAuthorityPerfect();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = BoundlessAuthorityPerfect(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

  group('AuthorityPerfectBoundless', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = AuthorityPerfectBoundless();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Counter increment reduces accuracy correctly', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 100);
      expect(metric.calculateAccuracy(), 90.0);
    });

    test('Maximum counter results in 0% accuracy', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('Threshold validation works correctly at 95%', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 50);
      expect(metric.isWithinThreshold(95.0), false);
    });

    test('Threshold validation passes at lower threshold', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 100);
      expect(metric.isWithinThreshold(85.0), true);
    });

    test('Accuracy calculation is precise at midpoint', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Counter setter allows modification', () {
      final metric = AuthorityPerfectBoundless();
      metric.currentCounter = 250;
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Negative threshold comparison handled correctly', () {
      final metric = AuthorityPerfectBoundless();
      expect(metric.isWithinThreshold(-10.0), true);
    });

    test('Accuracy never exceeds 100%', () {
      final metric = AuthorityPerfectBoundless(currentCounter: -100);
      expect(metric.calculateAccuracy() <= 100.0, true);
    });

    test('Counter values beyond max maintain logical accuracy', () {
      final metric = AuthorityPerfectBoundless(currentCounter: 2000);
      expect(metric.calculateAccuracy(), lessThan(0.0));
    });
  });

}
