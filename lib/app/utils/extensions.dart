import 'dart:developer';

class Extensions {}

extension StringLog on String {
  void printStr() {
    print('$this');
  }

  void logStr({
    String? name,
    Object? error,
  }) {
    return log(
      this,
      name: name ?? "",
      error: error,
    );
  }
}
