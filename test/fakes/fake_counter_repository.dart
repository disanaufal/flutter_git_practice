import 'package:flutter_git_practice/data/counter_repository.dart';

class FakeCounterRepository extends CounterRepository {
  @override
  Future<int> increment(int current) async {
    return current + 1;
  }
}