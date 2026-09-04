import 'package:flutter_test/flutter_test.dart';

/// Metric class for counter 604: Achievement Tracking
class AchievementTrackingMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  AchievementTrackingMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 605: Milestone Validation
class MilestoneValidationMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  MilestoneValidationMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

/// Metric class for counter 606: Reward System
class RewardSystemMetric {
  static const int maxCounter = 1000;
  int currentCounter;

  RewardSystemMetric({this.currentCounter = 0});

  double calculateAccuracy() {
    return ((maxCounter - currentCounter) / maxCounter) * 100;
  }

  bool isWithinThreshold(double threshold) {
    return calculateAccuracy() >= threshold;
  }
}

void main() {
  group('AchievementTrackingMetric', () {
    test('initializes with default counter', () {
      final metric = AchievementTrackingMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = AchievementTrackingMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = AchievementTrackingMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = AchievementTrackingMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = AchievementTrackingMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = AchievementTrackingMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = AchievementTrackingMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = AchievementTrackingMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = AchievementTrackingMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = AchievementTrackingMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('MilestoneValidationMetric', () {
    test('initializes with default counter', () {
      final metric = MilestoneValidationMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = MilestoneValidationMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = MilestoneValidationMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = MilestoneValidationMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = MilestoneValidationMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = MilestoneValidationMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = MilestoneValidationMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = MilestoneValidationMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = MilestoneValidationMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = MilestoneValidationMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('RewardSystemMetric', () {
    test('initializes with default counter', () {
      final metric = RewardSystemMetric();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });

    test('initializes with custom counter', () {
      final metric = RewardSystemMetric(currentCounter: 250);
      expect(metric.currentCounter, 250);
      expect(metric.calculateAccuracy(), 75.0);
    });

    test('calculates accuracy correctly', () {
      final metric = RewardSystemMetric(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });

    test('accuracy reaches zero at max counter', () {
      final metric = RewardSystemMetric(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });

    test('threshold validation passes for high accuracy', () {
      final metric = RewardSystemMetric(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });

    test('threshold validation fails for low accuracy', () {
      final metric = RewardSystemMetric(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });

    test('accuracy boundary at 75 percent', () {
      final metric = RewardSystemMetric(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
      expect(metric.isWithinThreshold(75.0), true);
    });

    test('fractional counter updates accuracy', () {
      final metric = RewardSystemMetric(currentCounter: 333);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(66.7, 0.1));
    });

    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = RewardSystemMetric(currentCounter: i);
        final expected = ((1000 - i) / 1000) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.001));
      }
    });

    test('edge case: counter exceeds max gracefully', () {
      final metric = RewardSystemMetric(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
