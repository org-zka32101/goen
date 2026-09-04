import 'package:flutter_test/flutter_test.dart';

/// Metric class for Cosmic Transcendent Mastery (Counter: 526)
class CosmicTranscendentMastery {
  final int counter;

  CosmicTranscendentMastery({required this.counter});

  bool isValid() => counter >= 0 && counter <= 526;

  double calculateAccuracy() => ((526 - counter) / 526) * 100;

  String report() =>
      'CosmicTranscendentMastery { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

/// Metric class for Ultimate Transcendent Glory (Counter: 527)
class UltimateTranscendentGlory {
  final int counter;

  UltimateTranscendentGlory({required this.counter});

  bool isValid() => counter >= 0 && counter <= 527;

  double calculateAccuracy() => ((527 - counter) / 527) * 100;

  String report() =>
      'UltimateTranscendentGlory { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

/// Metric class for Mastery Transcendent Glory (Counter: 528)
class MasteryTranscendentGlory {
  final int counter;

  MasteryTranscendentGlory({required this.counter});

  bool isValid() => counter >= 0 && counter <= 528;

  double calculateAccuracy() => ((528 - counter) / 528) * 100;

  String report() =>
      'MasteryTranscendentGlory { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

void main() {
  group('CosmicTranscendentMastery Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = CosmicTranscendentMastery(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 526', () {
      final metric = CosmicTranscendentMastery(counter: 526);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 526', () {
      final metric = CosmicTranscendentMastery(counter: 527);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = CosmicTranscendentMastery(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = CosmicTranscendentMastery(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 526', () {
      final metric = CosmicTranscendentMastery(counter: 526);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 263', () {
      final metric = CosmicTranscendentMastery(counter: 263);
      expect(metric.calculateAccuracy(), closeTo(50.0, 0.1));
    });

    test('report returns valid string format', () {
      final metric = CosmicTranscendentMastery(counter: 100);
      final report = metric.report();
      expect(report.contains('CosmicTranscendentMastery'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = CosmicTranscendentMastery(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = CosmicTranscendentMastery(counter: 264);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });

  group('UltimateTranscendentGlory Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = UltimateTranscendentGlory(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 527', () {
      final metric = UltimateTranscendentGlory(counter: 527);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 527', () {
      final metric = UltimateTranscendentGlory(counter: 528);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = UltimateTranscendentGlory(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = UltimateTranscendentGlory(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 527', () {
      final metric = UltimateTranscendentGlory(counter: 527);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 263', () {
      final metric = UltimateTranscendentGlory(counter: 263);
      expect(metric.calculateAccuracy(), closeTo(50.09, 0.1));
    });

    test('report returns valid string format', () {
      final metric = UltimateTranscendentGlory(counter: 100);
      final report = metric.report();
      expect(report.contains('UltimateTranscendentGlory'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = UltimateTranscendentGlory(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = UltimateTranscendentGlory(counter: 264);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });

  group('MasteryTranscendentGlory Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = MasteryTranscendentGlory(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 528', () {
      final metric = MasteryTranscendentGlory(counter: 528);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 528', () {
      final metric = MasteryTranscendentGlory(counter: 529);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = MasteryTranscendentGlory(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = MasteryTranscendentGlory(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 528', () {
      final metric = MasteryTranscendentGlory(counter: 528);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 264', () {
      final metric = MasteryTranscendentGlory(counter: 264);
      expect(metric.calculateAccuracy(), closeTo(50.0, 0.1));
    });

    test('report returns valid string format', () {
      final metric = MasteryTranscendentGlory(counter: 100);
      final report = metric.report();
      expect(report.contains('MasteryTranscendentGlory'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = MasteryTranscendentGlory(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = MasteryTranscendentGlory(counter: 265);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });
}
