import 'package:flutter/material.dart';

class DropdownButtonWidget<T extends Enum> extends StatefulWidget {
  const DropdownButtonWidget({
    super.key,
    required this.enumValues,
    required this.onValueChanged,
    required this.labelText,
  });

  final List<T> enumValues;
  final ValueChanged<T> onValueChanged;
  final String labelText;
  @override
  State<DropdownButtonWidget<T>> createState() => _DropdownButtonState<T>();
}

class _DropdownButtonState<T extends Enum>
    extends State<DropdownButtonWidget<T>> {
  late T dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.enumValues.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: dropdownValue,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
      ),
      onChanged: (T? value) {
        if (value != null) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value;
          });
          widget.onValueChanged(value);
        }
      },
      isExpanded: true,
      items: widget.enumValues.map<DropdownMenuItem<T>>((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(value.toString().split('.').last),
        );
      }).toList(),
    );
  }
}
