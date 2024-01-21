import 'dart:async' show Timer;

import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_hooks/flutter_hooks.dart' show Hook, HookState, use;

// ignore: library_private_types_in_public_api
_Debounce<T> useDebounce<T>({
  required int debounceDelay,
  required void Function(T) callback,
  List<Object?>? keys,
}) {
  return use(
    _DebounceHook<T>(
      debounceDelay: debounceDelay,
      callback: callback,
      keys: keys,
    ),
  );
}

class _DebounceHook<T> extends Hook<_Debounce<T>> {
  const _DebounceHook({
    required this.debounceDelay,
    required this.callback,
    super.keys,
  });

  final int debounceDelay;
  final void Function(T) callback;

  @override
  HookState<_Debounce<T>, Hook<_Debounce<T>>> createState() =>
      _DebounceHookState();
}

class _DebounceHookState<T> extends HookState<_Debounce<T>, _DebounceHook<T>> {
  late final _debounce = _Debounce(
    debounceDelay: hook.debounceDelay,
    callback: hook.callback,
  );

  @override
  _Debounce<T> build(BuildContext context) => _debounce;

  @override
  void dispose() => _debounce.dispose();

  @override
  String get debugLabel => 'useDebounce';
}

class _Debounce<T> {
  _Debounce({
    required int debounceDelay,
    required void Function(T) callback,
  })  : _debounceDelay = debounceDelay,
        _callback = callback;

  Timer? _timer;
  final int _debounceDelay;
  final void Function(T) _callback;

  void onChanged(T value) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: _debounceDelay), () {
      _callback(value);
    });
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
