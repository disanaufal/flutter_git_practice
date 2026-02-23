class CounterRepository {
  Future<int> increment(int current) async {
    await Future.delayed(const Duration(seconds: 1));
    return current + 1;
  }
}