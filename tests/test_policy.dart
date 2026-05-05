import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(64, 74, 14, 19, 12);
  assert(Policy.score(signalcase_1) == 111);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(81, 92, 22, 8, 7);
  assert(Policy.score(signalcase_2) == 161);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(105, 80, 26, 16, 10);
  assert(Policy.score(signalcase_3) == 156);
  assert(Policy.classify(signalcase_3) == 'review');
}
