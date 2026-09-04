import 'package:flutter_test/flutter_test.dart';

// Dimension 4: Flawless Perfection & Absolute Mastery Testing
// Counters: 424-426
// Tests: 30 (10 per metric class)

class FlawlessPerfection {
  final int counter;
  FlawlessPerfection({required this.counter});
  bool isValid() => counter >= 0 && counter <= 424;
  double calculateAccuracy() => ((424 - counter) / 424) * 100;
  String report() => 'FlawlessPerfection { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

class AbsoluteMastery {
  final int counter;
  AbsoluteMastery({required this.counter});
  bool isValid() => counter >= 0 && counter <= 425;
  double calculateAccuracy() => ((425 - counter) / 425) * 100;
  String report() => 'AbsoluteMastery { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

class PerfectionMastery {
  final int counter;
  PerfectionMastery({required this.counter});
  bool isValid() => counter >= 0 && counter <= 426;
  double calculateAccuracy() => ((426 - counter) / 426) * 100;
  String report() => 'PerfectionMastery { counter: $counter, accuracy: ${calculateAccuracy().toStringAsFixed(2)}%, validation: ${isValid()} }';
}

void main() {
  group('FlawlessPerfection Tests (Counter 424)', () {
    test('Minimum boundary validation (counter = 0)', () {
      final metric = FlawlessPerfection(counter: 0);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Maximum boundary validation (counter = 424)', () {
      final metric = FlawlessPerfection(counter: 424);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Below minimum rejection (counter = -1)', () {
      final metric = FlawlessPerfection(counter: -1);
      expect(metric.isValid(), false);
    });

    test('Above maximum rejection (counter = 425)', () {
      final metric = FlawlessPerfection(counter: 425);
      expect(metric.isValid(), false);
    });

    test('Perfect state accuracy (100%)', () {
      final metric = FlawlessPerfection(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Worst state accuracy (~0%)', () {
      final metric = FlawlessPerfection(counter: 424);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Midpoint accuracy (~50%)', () {
      final metric = FlawlessPerfection(counter: 212);
      expect(metric.calculateAccuracy(), closeTo(50.0, 1.0));
    });

    test('Minimum threshold validation (≥96.2%)', () {
      final metric = FlawlessPerfection(counter: 9);
      expect(metric.calculateAccuracy(), greaterThanOrEqualTo(96.2));
    });

    test('Report string generation', () {
      final metric = FlawlessPerfection(counter: 50);
      final report = metric.report();
      expect(report.contains('FlawlessPerfection'), true);
      expect(report.contains('counter: 50'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('Accuracy formula consistency', () {
      for (int counter = 0; counter <= 424; counter += 25) {
        final metric = FlawlessPerfection(counter: counter);
        final expected = ((424 - counter) / 424) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.01));
      }
    });
  });

  group('AbsoluteMastery Tests (Counter 425)', () {
    test('Minimum boundary validation (counter = 0)', () {
      final metric = AbsoluteMastery(counter: 0);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Maximum boundary validation (counter = 425)', () {
      final metric = AbsoluteMastery(counter: 425);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Below minimum rejection (counter = -1)', () {
      final metric = AbsoluteMastery(counter: -1);
      expect(metric.isValid(), false);
    });

    test('Above maximum rejection (counter = 426)', () {
      final metric = AbsoluteMastery(counter: 426);
      expect(metric.isValid(), false);
    });

    test('Perfect state accuracy (100%)', () {
      final metric = AbsoluteMastery(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Worst state accuracy (~0%)', () {
      final metric = AbsoluteMastery(counter: 425);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Midpoint accuracy (~50%)', () {
      final metric = AbsoluteMastery(counter: 212);
      expect(metric.calculateAccuracy(), closeTo(50.1, 1.0));
    });

    test('Minimum threshold validation (≥96.2%)', () {
      final metric = AbsoluteMastery(counter: 9);
      expect(metric.calculateAccuracy(), greaterThanOrEqualTo(96.2));
    });

    test('Report string generation', () {
      final metric = AbsoluteMastery(counter: 50);
      final report = metric.report();
      expect(report.contains('AbsoluteMastery'), true);
      expect(report.contains('counter: 50'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('Accuracy formula consistency', () {
      for (int counter = 0; counter <= 425; counter += 25) {
        final metric = AbsoluteMastery(counter: counter);
        final expected = ((425 - counter) / 425) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.01));
      }
    });
  });

  group('PerfectionMastery Tests (Counter 426)', () {
    test('Minimum boundary validation (counter = 0)', () {
      final metric = PerfectionMastery(counter: 0);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Maximum boundary validation (counter = 426)', () {
      final metric = PerfectionMastery(counter: 426);
      expect(metric.isValid(), true);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Below minimum rejection (counter = -1)', () {
      final metric = PerfectionMastery(counter: -1);
      expect(metric.isValid(), false);
    });

    test('Above maximum rejection (counter = 427)', () {
      final metric = PerfectionMastery(counter: 427);
      expect(metric.isValid(), false);
    });

    test('Perfect state accuracy (100%)', () {
      final metric = PerfectionMastery(counter: 0);
      expect(metric.calculateAccuracy(), closeTo(100.0, 0.1));
    });

    test('Worst state accuracy (~0%)', () {
      final metric = PerfectionMastery(counter: 426);
      expect(metric.calculateAccuracy(), closeTo(0.0, 0.1));
    });

    test('Midpoint accuracy (~50%)', () {
      final metric = PerfectionMastery(counter: 213);
      expect(metric.calculateAccuracy(), closeTo(50.0, 1.0));
    });

    test('Minimum threshold validation (≥96.2%)', () {
      final metric = PerfectionMastery(counter: 9);
      expect(metric.calculateAccuracy(), greaterThanOrEqualTo(96.2));
    });

    test('Report string generation', () {
      final metric = PerfectionMastery(counter: 50);
      final report = metric.report();
      expect(report.contains('PerfectionMastery'), true);
      expect(report.contains('counter: 50'), true);
      expect(report.contains('accuracy:'), true);
    });

    test('Accuracy formula consistency', () {
      for (int counter = 0; counter <= 426; counter += 25) {
        final metric = PerfectionMastery(counter: counter);
        final expected = ((426 - counter) / 426) * 100;
        expect(metric.calculateAccuracy(), closeTo(expected, 0.01));
      }
    });
  });
}
