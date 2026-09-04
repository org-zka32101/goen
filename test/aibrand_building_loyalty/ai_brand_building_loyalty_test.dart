import 'package:flutter_test/flutter_test.dart';

/// Metric class for counter 664: Brand Awareness
class BrandAwarenessMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  BrandAwarenessMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 665: Customer Loyalty
class CustomerLoyaltyMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  CustomerLoyaltyMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 666: Brand Reputation
class BrandReputationMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  BrandReputationMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

void main() {
  group('BrandAwarenessMetric', () {
    test('initializes with default counter', () {
      final metric = BrandAwarenessMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = BrandAwarenessMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = BrandAwarenessMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = BrandAwarenessMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = BrandAwarenessMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = BrandAwarenessMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = BrandAwarenessMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = BrandAwarenessMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = BrandAwarenessMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = BrandAwarenessMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('CustomerLoyaltyMetric', () {
    test('initializes with default counter', () {
      final metric = CustomerLoyaltyMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = CustomerLoyaltyMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = CustomerLoyaltyMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('BrandReputationMetric', () {
    test('initializes with default counter', () {
      final metric = BrandReputationMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = BrandReputationMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = BrandReputationMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = BrandReputationMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = BrandReputationMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = BrandReputationMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = BrandReputationMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = BrandReputationMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = BrandReputationMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = BrandReputationMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
