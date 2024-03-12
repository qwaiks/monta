import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomErrorWidget extends ConsumerWidget {
//assert that both state and errorMessage are not null

  const CustomErrorWidget({super.key, this.state, this.errorMessage})
      : assert(state != null || errorMessage != null,
            'state and errorMessage fields cannot be null');

  final AsyncValue<dynamic>? state;
  final String? errorMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if ((state != null && !state!.isLoading && state!.hasError) ||
        (errorMessage != null && errorMessage!.isNotEmpty)) {
      String message = state?.error.toString() ?? errorMessage ?? '';

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.errorContainer,
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
            ),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
