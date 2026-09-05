import 'package:flutter_test/flutter_test.dart';

class PerfectEternalSovereignty {
  static const int maxCounter = 1000;
  int currentCounter;
  PerfectEternalSovereignty({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class EternalSovereigntyPerfect {
  static const int maxCounter = 1000;
  int currentCounter;
  EternalSovereigntyPerfect({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class SovereigntyPerfectEternal {
  static const int maxCounter = 1000;
  int currentCounter;
  SovereigntyPerfectEternal({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('PerfectEternalSovereignty', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = PerfectEternalSovereignty();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = PerfectEternalSovereignty(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = PerfectEternalSovereignty(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = PerfectEternalSovereignty(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = PerfectEternalSovereignty(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = PerfectEternalSovereignty(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = PerfectEternalSovereignty(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = PerfectEternalSovereignty(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = PerfectEternalSovereignty(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = PerfectEternalSovereignty(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = PerfectEternalSovereignty(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('EternalSovereigntyPerfect', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = EternalSovereigntyPerfect();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = EternalSovereigntyPerfect(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = EternalSovereigntyPerfect(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = EternalSovereigntyPerfect(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = EternalSovereigntyPerfect(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('SovereigntyPerfectEternal', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = SovereigntyPerfectEternal();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = SovereigntyPerfectEternal(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = SovereigntyPerfectEternal(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = SovereigntyPerfectEternal(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = SovereigntyPerfectEternal(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });
}
