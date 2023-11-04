import 'package:flutter/material.dart';

class ButtonTableWidget extends StatelessWidget {
  const ButtonTableWidget(
      {super.key,
      this.callback,
      required this.textData,
      required this.conditionValue});
  final Function? callback;
  final String textData;

  final bool conditionValue;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // ignore: avoid_dynamic_calls
      onPressed: () => callback!(),
      style: conditionValue
          ? TextButton.styleFrom(
              // ignore: use_named_constants
              padding: const EdgeInsets.all(0),
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: const RoundedRectangleBorder(),
            )
          : TextButton.styleFrom(
              // ignore: use_named_constants
              padding: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(),
            ),
      child: Text(textData),
    );
  }
}
