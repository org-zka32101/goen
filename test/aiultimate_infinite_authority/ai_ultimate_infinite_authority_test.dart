import 'package:flutter_test/flutter_test.dart';

class UltimateInfiniteAuthority {
  static const int maxCounter = 1000;
  int currentCounter;
  UltimateInfiniteAuthority({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class InfiniteAuthorityUltimate {
  static const int maxCounter = 1000;
  int currentCounter;
  InfiniteAuthorityUltimate({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

class AuthorityUltimateInfinite {
  static const int maxCounter = 1000;
  int currentCounter;
  AuthorityUltimateInfinite({this.currentCounter = 0});
  double calculateAccuracy() => ((maxCounter - currentCounter) / maxCounter) * 100;
  bool isWithinThreshold(double threshold) => calculateAccuracy() >= threshold;
}

void main() {
  group('UltimateInfiniteAuthority', () {
    test('initializes with default counter', () {
      final metric = UltimateInfiniteAuthority();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = UltimateInfiniteAuthority(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = UltimateInfiniteAuthority(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('InfiniteAuthorityUltimate', () {
    test('initializes with default counter', () {
      final metric = InfiniteAuthorityUltimate();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = InfiniteAuthorityUltimate(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = InfiniteAuthorityUltimate(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });

  group('AuthorityUltimateInfinite', () {
    test('initializes with default counter', () {
      final metric = AuthorityUltimateInfinite();
      expect(metric.currentCounter, 0);
      expect(metric.calculateAccuracy(), 100.0);
    });
    test('initializes with custom counter', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 250);
      expect(metric.calculateAccuracy(), 75.0);
    });
    test('calculates accuracy correctly', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 500);
      expect(metric.calculateAccuracy(), 50.0);
    });
    test('accuracy reaches zero at max counter', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 1000);
      expect(metric.calculateAccuracy(), 0.0);
    });
    test('threshold validation passes for high accuracy', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 100);
      expect(metric.isWithinThreshold(90.0), true);
    });
    test('threshold validation fails for low accuracy', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 900);
      expect(metric.isWithinThreshold(50.0), false);
    });
    test('accuracy boundary at 75 percent', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 250);
      expect(metric.isWithinThreshold(75.0), true);
    });
    test('fractional counter updates accuracy', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 333);
      expect(metric.calculateAccuracy(), closeTo(66.7, 0.1));
    });
    test('formula consistency across counter range', () {
      for (int i = 0; i <= 1000; i += 100) {
        final metric = AuthorityUltimateInfinite(currentCounter: i);
        expect(metric.calculateAccuracy(), closeTo(((1000 - i) / 1000) * 100, 0.001));
      }
    });
    test('edge case: counter exceeds max gracefully', () {
      final metric = AuthorityUltimateInfinite(currentCounter: 1500);
      expect(metric.calculateAccuracy(), closeTo(-50.0, 0.001));
    });
  });
}
