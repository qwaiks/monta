import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:monta/components/error_widget.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget(
      {super.key,
      required this.value,
      required this.data,
      this.errorWidget,
      this.loadingWidget});
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? errorWidget;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) =>
          errorWidget ??
          Center(child: CustomErrorWidget(errorMessage: e.toString())),
      loading: () =>
          loadingWidget ??
          const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
