import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_git_practice/state/counter_state.dart';
import 'package:flutter_git_practice/state/counter_status.dart';
import '../fakes/fake_counter_repository.dart';
import '../fakes/failing_fake_counter_repository.dart';

void main() {
  test('incrementAsync updates counter and status correctly', () async {
    final state = CounterState(FakeCounterRepository());

    // initial state
    expect(state.counter, 0);
    expect(state.status, CounterStatus.idle);

    // act
    final future = state.incrementAsync();

    // immediately after call
    expect(state.status, CounterStatus.loading);

    await future;

    // after completion
    expect(state.counter, 1);
    expect(state.status, CounterStatus.updated);
  });

  test('incrementAsync sets error on failure', () async {
  final state = CounterState(FailingFakeRepository());

  await state.incrementAsync();

  expect(state.status, CounterStatus.error);
  expect(state.error, isNotNull);
});
}