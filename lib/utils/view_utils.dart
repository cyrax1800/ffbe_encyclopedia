import 'dart:async';

import 'dart:ui';

class Debouncer {
  final int milliseconds;
  final VoidCallback action;
  Timer? _timer;

  Debouncer({required this.milliseconds, required this.action});

  run(VoidCallback action) {
    _timer?.cancel();

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
