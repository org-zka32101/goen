import 'package:flutter_test/flutter_test.dart';

/// Metric class for counter 655: Market Research
class MarketResearchMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  MarketResearchMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 656: Competitive Analysis
class CompetitiveAnalysisMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  CompetitiveAnalysisMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 657: Market Positioning
class MarketPositioningMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  MarketPositioningMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

void main() {
  group('MarketResearchMetric', () {
    test('initializes with default counter', () {
      final metric = MarketResearchMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = MarketResearchMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = MarketResearchMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = MarketResearchMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = MarketResearchMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = MarketResearchMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = MarketResearchMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = MarketResearchMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = MarketResearchMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = MarketResearchMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('CompetitiveAnalysisMetric', () {
    test('initializes with default counter', () {
      final metric = CompetitiveAnalysisMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = CompetitiveAnalysisMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = CompetitiveAnalysisMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('MarketPositioningMetric', () {
    test('initializes with default counter', () {
      final metric = MarketPositioningMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = MarketPositioningMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = MarketPositioningMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = MarketPositioningMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = MarketPositioningMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = MarketPositioningMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = MarketPositioningMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = MarketPositioningMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = MarketPositioningMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = MarketPositioningMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
