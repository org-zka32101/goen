import 'package:flutter_test/flutter_test.dart';

class AbsoluteInfiniteBrilliance {
  static const int maxCounter = 1000;
  int currentCounter;
  AbsoluteInfiniteBrilliance({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfiniteBrillianceAbsolute {
  static const int maxCounter = 1000;
  int currentCounter;
  InfiniteBrillianceAbsolute({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class BrillianceAbsoluteInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  BrillianceAbsoluteInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('AbsoluteInfiniteBrilliance', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = AbsoluteInfiniteBrilliance();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = AbsoluteInfiniteBrilliance(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = AbsoluteInfiniteBrilliance(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = AbsoluteInfiniteBrilliance(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = AbsoluteInfiniteBrilliance(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('InfiniteBrillianceAbsolute', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = InfiniteBrillianceAbsolute();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = InfiniteBrillianceAbsolute(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = InfiniteBrillianceAbsolute(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = InfiniteBrillianceAbsolute(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = InfiniteBrillianceAbsolute(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('BrillianceAbsoluteInfinite', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = BrillianceAbsoluteInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = BrillianceAbsoluteInfinite(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = BrillianceAbsoluteInfinite(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = BrillianceAbsoluteInfinite(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = BrillianceAbsoluteInfinite(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });
}
