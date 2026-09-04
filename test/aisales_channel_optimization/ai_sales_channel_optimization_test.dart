import 'package:flutter_test/flutter_test.dart';

/// Metric class for counter 661: Direct Sales Performance
class DirectSalesPerformanceMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  DirectSalesPerformanceMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 662: Partnership Channel Effectiveness
class PartnershipChannelEffectivenessMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  PartnershipChannelEffectivenessMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 663: Channel Attribution
class ChannelAttributionMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  ChannelAttributionMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

void main() {
  group('DirectSalesPerformanceMetric', () {
    test('initializes with default counter', () {
      final metric = DirectSalesPerformanceMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = DirectSalesPerformanceMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = DirectSalesPerformanceMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('PartnershipChannelEffectivenessMetric', () {
    test('initializes with default counter', () {
      final metric = PartnershipChannelEffectivenessMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = PartnershipChannelEffectivenessMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = PartnershipChannelEffectivenessMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('ChannelAttributionMetric', () {
    test('initializes with default counter', () {
      final metric = ChannelAttributionMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = ChannelAttributionMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = ChannelAttributionMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = ChannelAttributionMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = ChannelAttributionMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = ChannelAttributionMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = ChannelAttributionMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = ChannelAttributionMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = ChannelAttributionMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = ChannelAttributionMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
