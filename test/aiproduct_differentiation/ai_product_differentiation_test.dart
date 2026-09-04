import 'package:flutter_test/flutter_test.dart';

/// Metric class for counter 658: Feature Innovation
class FeatureInnovationMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  FeatureInnovationMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 659: User Experience Excellence
class UserExperienceExcellenceMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  UserExperienceExcellenceMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 660: Value Proposition
class ValuePropositionMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  ValuePropositionMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

void main() {
  group('FeatureInnovationMetric', () {
    test('initializes with default counter', () {
      final metric = FeatureInnovationMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = FeatureInnovationMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = FeatureInnovationMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = FeatureInnovationMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = FeatureInnovationMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = FeatureInnovationMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = FeatureInnovationMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = FeatureInnovationMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = FeatureInnovationMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = FeatureInnovationMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('UserExperienceExcellenceMetric', () {
    test('initializes with default counter', () {
      final metric = UserExperienceExcellenceMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = UserExperienceExcellenceMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = UserExperienceExcellenceMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('ValuePropositionMetric', () {
    test('initializes with default counter', () {
      final metric = ValuePropositionMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = ValuePropositionMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = ValuePropositionMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = ValuePropositionMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = ValuePropositionMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = ValuePropositionMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = ValuePropositionMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = ValuePropositionMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = ValuePropositionMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = ValuePropositionMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
