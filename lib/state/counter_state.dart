import 'package:flutter/foundation.dart';
import 'counter_status.dart';
import '../data/counter_repository.dart';

class CounterState extends ChangeNotifier {
  final CounterRepository repository;

  CounterState(this.repository);

  int _counter = 0;
  CounterStatus _status = CounterStatus.idle;
  String? _error;

  int get counter => _counter;
  CounterStatus get status => _status;
  String? get error => _error;

  Future<void> incrementAsync() async {
    _status = CounterStatus.loading;
    notifyListeners();

    try {
      _counter = await repository.increment(_counter);
      _status = CounterStatus.updated;
      _error = null;
    } catch (_) {
      _status = CounterStatus.error;
      _error = 'Failed to increment counter';
    }

    notifyListeners();
  }
}