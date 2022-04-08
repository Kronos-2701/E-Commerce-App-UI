import 'dart:async';

enum ActionCounter { add, subs }

class Counter {
  int count = 1;
  final _stateStreamController = StreamController<int>();

  StreamSink<int> get userSink => _stateStreamController.sink;

  Stream<int> get userStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<ActionCounter>();

  StreamSink<ActionCounter> get eventSink => _eventStreamController.sink;

  Stream<ActionCounter> get eventStream => _eventStreamController.stream;

  Counter() {
    eventStream.listen((event) {
      event == ActionCounter.add
          ? count++
          : count == 1
              ? count = count
              : count--;
      userSink.add(count);
    });
  }
}
