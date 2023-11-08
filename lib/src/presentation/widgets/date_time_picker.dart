
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final void Function(String)? onValueChanged;
  final String? initialValue;
  const DatePickerTextField(
      {super.key,
      required this.labelText,
      this.hintText,
      this.onValueChanged,
      this.initialValue,});

  @override
  State<DatePickerTextField> createState() => TextDatePickerState();
}

class TextDatePickerState extends State<DatePickerTextField> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    widget.initialValue == null
        ? _controller.text = ''
        : _controller.text = widget.initialValue!;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.calendar_today),
          border: const OutlineInputBorder(),
          labelText: widget.labelText,
          hintText: widget.hintText,),
      readOnly: true,
      onChanged: (value) {
        if (widget.onValueChanged != null) {
          // ignore: prefer_null_aware_method_calls
          widget.onValueChanged!(value);
        }
      }, //set it true, so that user will not able to edit text
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(
                2000,), //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101),);

        // ignore: unnecessary_null_comparison
        if (pickedDate != null) {
          final String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

          setState(() {
            _controller.text =
                formattedDate; //set output date to TextField value.
          });
          if (widget.onValueChanged != null) {
            // ignore: prefer_null_aware_method_calls
            widget.onValueChanged!(_controller.text);
          }
        }
      },
    );
  }

  String get value => _controller.text;
}
