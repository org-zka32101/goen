import 'package:flutter_test/flutter_test.dart';

class BoundlessCosmicGlory {
  static const int maxCounter = 1000;
  int currentCounter;
  BoundlessCosmicGlory({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class CosmicGloryBoundless {
  static const int maxCounter = 1000;
  int currentCounter;
  CosmicGloryBoundless({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class GloryBoundlessCosmic {
  static const int maxCounter = 1000;
  int currentCounter;
  GloryBoundlessCosmic({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('BoundlessCosmicGlory', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = BoundlessCosmicGlory();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = BoundlessCosmicGlory(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = BoundlessCosmicGlory(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = BoundlessCosmicGlory(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = BoundlessCosmicGlory(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = BoundlessCosmicGlory(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = BoundlessCosmicGlory(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = BoundlessCosmicGlory(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = BoundlessCosmicGlory(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = BoundlessCosmicGlory(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = BoundlessCosmicGlory(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('CosmicGloryBoundless', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = CosmicGloryBoundless();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = CosmicGloryBoundless(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = CosmicGloryBoundless(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = CosmicGloryBoundless(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = CosmicGloryBoundless(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = CosmicGloryBoundless(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = CosmicGloryBoundless(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = CosmicGloryBoundless(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = CosmicGloryBoundless(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = CosmicGloryBoundless(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = CosmicGloryBoundless(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });

  group('GloryBoundlessCosmic', () {
    test('Default initialization sets counter to 0 with 100% accuracy', () {
      final metric = GloryBoundlessCosmic();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('Custom counter initialization sets provided counter value', () {
      final metric = GloryBoundlessCosmic(currentCounter: 500);
      expect(metric.currentCounter, 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('Accuracy calculation formula returns correct percentage', () {
      final metric = GloryBoundlessCosmic(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('Boundary conditions at counter 0 and 1000', () {
      final metric0 = GloryBoundlessCosmic(currentCounter: 0);
      expect(metric0.calculateAccuracy(), 100.0);
      
      final metric1000 = GloryBoundlessCosmic(currentCounter: 1000);
      expect(metric1000.calculateAccuracy(), 0.0);
    });

    test('Threshold validation returns correct boolean', () {
      final metric = GloryBoundlessCosmic(currentCounter: 300);
      expect(metric.isWithinThreshold(70.0), true);
      expect(metric.isWithinThreshold(71.0), false);
    });

    test('75% boundary edge case validation', () {
      final metric = GloryBoundlessCosmic(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
      expect(metric.isWithinThreshold(75.1), false);
    });

    test('Fractional counter precision across range', () {
      final metric = GloryBoundlessCosmic(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('Formula consistency across 0-1000 range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = GloryBoundlessCosmic(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), expected);
      }
    });

    test('Edge case handling with counter above range', () {
      final metric = GloryBoundlessCosmic(currentCounter: 1500);
      expect(metric.calculateAccuracy(), -50.0);
    });

    test('Combined initialization and calculation consistency', () {
      final metric = GloryBoundlessCosmic(currentCounter: 600);
      expect(metric.currentCounter, 600);
      expect(metric.calculateAccuracy(), 40.0);
    });
  });
}
