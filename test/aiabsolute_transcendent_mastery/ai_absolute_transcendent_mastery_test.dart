import 'package:flutter_test/flutter_test.dart';

/// Metric class for Absolute Transcendent Mastery (Counter: 520)
class AbsoluteTranscendentMastery {
  final int counter;

  AbsoluteTranscendentMastery({required this.counter});

  bool isValid() => counter >= 0 && counter <= 520;

  double calculateAccuracy() => ((520 - counter) / 520) * 100;

  String report() =>
      'AbsoluteTranscendentMastery { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

/// Metric class for Perfect Transcendent Command (Counter: 521)
class PerfectTranscendentCommand {
  final int counter;

  PerfectTranscendentCommand({required this.counter});

  bool isValid() => counter >= 0 && counter <= 521;

  double calculateAccuracy() => ((521 - counter) / 521) * 100;

  String report() =>
      'PerfectTranscendentCommand { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

/// Metric class for Mastery Transcendent Command (Counter: 522)
class MasteryTranscendentCommand {
  final int counter;

  MasteryTranscendentCommand({required this.counter});

  bool isValid() => counter >= 0 && counter <= 522;

  double calculateAccuracy() => ((522 - counter) / 522) * 100;

  String report() =>
      'MasteryTranscendentCommand { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

void main() {
  group('AbsoluteTranscendentMastery Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = AbsoluteTranscendentMastery(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 520', () {
      final metric = AbsoluteTranscendentMastery(counter: 520);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 520', () {
      final metric = AbsoluteTranscendentMastery(counter: 521);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = AbsoluteTranscendentMastery(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = AbsoluteTranscendentMastery(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 520', () {
      final metric = AbsoluteTranscendentMastery(counter: 520);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 260', () {
      final metric = AbsoluteTranscendentMastery(counter: 260);
      expect(metric.calculateAccuracy(), closeTo(50.0, 0.1));
    });

    test('report returns valid string format', () {
      final metric = AbsoluteTranscendentMastery(counter: 100);
      final report = metric.report();
      expect(report.contains('AbsoluteTranscendentMastery'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = AbsoluteTranscendentMastery(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = AbsoluteTranscendentMastery(counter: 261);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });

  group('PerfectTranscendentCommand Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = PerfectTranscendentCommand(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 521', () {
      final metric = PerfectTranscendentCommand(counter: 521);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 521', () {
      final metric = PerfectTranscendentCommand(counter: 522);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = PerfectTranscendentCommand(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = PerfectTranscendentCommand(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 521', () {
      final metric = PerfectTranscendentCommand(counter: 521);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 260', () {
      final metric = PerfectTranscendentCommand(counter: 260);
      expect(metric.calculateAccuracy(), closeTo(50.09, 0.1));
    });

    test('report returns valid string format', () {
      final metric = PerfectTranscendentCommand(counter: 100);
      final report = metric.report();
      expect(report.contains('PerfectTranscendentCommand'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = PerfectTranscendentCommand(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = PerfectTranscendentCommand(counter: 261);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });

  group('MasteryTranscendentCommand Tests', () {
    test('isValid returns true for counter 0', () {
      final metric = MasteryTranscendentCommand(counter: 0);
      expect(metric.isValid(), true);
    });

    test('isValid returns true for counter 522', () {
      final metric = MasteryTranscendentCommand(counter: 522);
      expect(metric.isValid(), true);
    });

    test('isValid returns false for counter > 522', () {
      final metric = MasteryTranscendentCommand(counter: 523);
      expect(metric.isValid(), false);
    });

    test('isValid returns false for negative counter', () {
      final metric = MasteryTranscendentCommand(counter: -1);
      expect(metric.isValid(), false);
    });

    test('calculateAccuracy returns 100 for counter 0', () {
      final metric = MasteryTranscendentCommand(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.01));
    });

    test('calculateAccuracy returns 0 for counter 522', () {
      final metric = MasteryTranscendentCommand(counter: 522);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.01));
    });

    test('calculateAccuracy returns ~50 for counter 261', () {
      final metric = MasteryTranscendentCommand(counter: 261);
      expect(metric.calculateAccuracy(), closeTo(50.0, 0.1));
    });

    test('report returns valid string format', () {
      final metric = MasteryTranscendentCommand(counter: 100);
      final report = metric.report();
      expect(report.contains('MasteryTranscendentCommand'), true);
      expect(report.contains('counter: 100'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('accuracy formula consistency at boundary', () {
      final metric = MasteryTranscendentCommand(counter: 1);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy, closeTo(99.81, 0.1));
    });

    test('accuracy formula consistency for mid-range', () {
      final metric = MasteryTranscendentCommand(counter: 262);
      final accuracy = metric.calculateAccuracy();
      expect(accuracy > 0 && accuracy < 100, true);
    });
  });
}
