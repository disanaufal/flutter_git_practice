import 'package:flutter_git_practice/data/counter_repository.dart';

class FailingFakeRepository extends CounterRepository {
  @override
  Future<int> increment(int current) async {
    throw Exception('Increment failed');
  }
}