import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArterialPressureWidget extends StatefulWidget {
  final String label;
  final double? width;
  ArterialPressureWidget({super.key, required this.label, this.width});

  @override
  // ignore: library_private_types_in_public_api
  _ArterialPressureState createState() => _ArterialPressureState();

  String get value => _value!;

  // ignore: use_late_for_private_fields_and_variables
  String? _value;
}

class _ArterialPressureState extends State<ArterialPressureWidget> {
  String _firstValue = '';
  String _secondValue = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.only(bottom: 5, left: 2),
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            children: [
              // Espacio entre la 'x' y el TextField
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Porfavor ingresar un dato';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _firstValue = value;
                    widget._value = '$_firstValue/$_secondValue';
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('/', style: TextStyle(fontSize: 20)),
              const SizedBox(
                width: 10,
              ),
              // Espacio entre el TextField y el DropdownButton
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Porfavor ingresar un dato';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _secondValue = value;
                    widget._value = '$_firstValue/$_secondValue';
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
