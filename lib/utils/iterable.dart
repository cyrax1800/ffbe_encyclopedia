extension ExtendedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E element) transform) {
    var i = 0;
    return map((e) => transform(i++, e));
  }

  Iterable<R> mapIndexedNotNull<R>(R? Function(int index, E) transform) sync* {
    var index = 0;
    for (final element in this) {
      final result = transform(index++, element);
      if (result != null) {
        yield result;
      }
    }
  }

  void forEachIndexed(void Function(int index, E element) f) {
    var i = 0;
    forEach((e) => f(i++, e));
  }
}
