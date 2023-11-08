// ignore_for_file: avoid_setters_without_getters

import 'package:birthflow/src/core/hodge_plane/domain/models/hodge_plane.dart';
import 'package:birthflow/src/presentation/partograph/widgets/expandable_fab.dart';
import 'package:birthflow/src/presentation/widgets/dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HodgePlaneDialogWidget extends StatelessWidget {
  const HodgePlaneDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Plano de hodge',
      child: ActionButton(
        onPressed: () async {
          final result = await _showCustomDialog(context);
          if (result != null) {}
        },
        icon: const Icon(Icons.add_circle_outline),
      ),
    );
  }

  Future<_ResultValues?> _showCustomDialog(BuildContext context) async {
    final TextEditingController timeInput = TextEditingController();

    final today = DateTime.now();
    timeInput.text = DateFormat('HH:mm:ss').format(today);

    final _ResultValues value = _ResultValues(
      position: HodgePlanePosition.values.first,
      plane: Plane.values.first,
      time: today,
    );

    return showDialog<_ResultValues>(
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, setState) => SimpleDialog(
          title: const Text('Nuevo VVP'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButtonWidget<HodgePlanePosition>(
                labelText: 'Posicion',
                enumValues: HodgePlanePosition.values,
                onValueChanged: (HodgePlanePosition position) {
                  value.setPosition = position;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButtonWidget<Plane>(
                labelText: 'Plano',
                enumValues: Plane.values,
                onValueChanged: (Plane plane) {
                  value.setPlane = plane;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: timeInput, //editing controller of this TextField
                decoration: const InputDecoration(
                  //icon of text field
                  border: OutlineInputBorder(),
                  labelText: 'Tiempo', //label text of field
                ),
                readOnly:
                    true, //set it true, so that user will not able to edit text
                onTap: () async {
                  final TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (pickedTime != null) {
                    final DateTime dateTime = DateTime(
                      today.year,
                      today.month,
                      today.day,
                      pickedTime.hour,
                      pickedTime.minute,
                      pickedTime.minute,
                    );

                    final String formattedTime =
                        DateFormat('HH:mm:ss').format(dateTime);

                    setState(() {
                      timeInput.text = formattedTime;
                      value.setTime = dateTime;
                    });
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, null),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, value),
                    child: const Text('Aceptar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultValues {
  HodgePlanePosition? position;
  Plane? plane;
  DateTime? time;

  _ResultValues({
    required this.position,
    required this.plane,
    required this.time,
  });

  set setPosition(HodgePlanePosition position) {
    this.position = position;
  }

  set setPlane(Plane plane) {
    this.plane = plane;
  }

  set setTime(DateTime time) {
    this.time = time;
  }
}
