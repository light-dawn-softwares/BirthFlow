// ignore_for_file: constant_identifier_names, avoid_setters_without_getters

import 'package:birthflow/src/presentation/widgets/arterial_pressure_widget.dart';
import 'package:birthflow/src/presentation/widgets/dropdown_button_widget.dart';
import 'package:birthflow/src/presentation/widgets/form_element_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum MaternalPosition {
  Derecho('Lat. Derecho'),
  Izquierdo('Lat. Izquierdo'),
  Dorsal('Dorsal'),
  Semisentada('Semisentada'),
  Sentada('Sentada'),
  Parada('Parada o Caminando');

  const MaternalPosition(this.value);

  final String value;
}

enum PainLocation {
  Suprapublico('Suprapublico'),
  Sacro('Sacro');

  const PainLocation(this.value);

  final String value;
}

enum PainIntensity {
  Fuerte('Fuerte'),
  Normal('Normal'),
  Debil('Debil');

  const PainIntensity(this.value);

  final String value;
}

class MedicalSurveillanceDialogWidget extends StatelessWidget {
  const MedicalSurveillanceDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Vigilancia',
      child: FloatingActionButton(
        onPressed: () async {
          final result = await _showCustomDialog(context);
          if (result != null) {}
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<_ResultValues?> _showCustomDialog(BuildContext context) async {
    final TextEditingController timeController = TextEditingController();
    //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final arterialPressureWidget =
        ArterialPressureWidget(label: 'TensionArterial');

    final maternalPulseWidget = FormElementWidget(
      label: 'Pulso Materno',
    );

    final fetalHeartRateWidget = FormElementWidget(
      label: 'Frecuencia cardiaca fetal',
    );

    final contractionsDurationWidget = FormElementWidget(
      label: 'Duracion Contracciones',
    );

    // ignore: no_leading_underscores_for_local_identifiers
    final _ResultValues _value = _ResultValues(
      time: DateTime.now(),
      arterialPressure: '',
      maternalPulse: '',
      fetalHeartRate: '',
      contractionsDuration: '',
      frequencyContractions: '',
      painIntensity: '',
      painLocation: '',
      maternalPosition: MaternalPosition.Derecho,
    );

    return showDialog<_ResultValues>(
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, setState) => SimpleDialog(
          title: const Text('Nuevo Valor'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextFormField(
                controller:
                    timeController, //editing controller of this TextField
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tiempo',
                ),
                readOnly:
                    true, //set it true, so that user will not able to edit text
                onTap: () async {
                  final TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (pickedTime != null) {
                    // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
                    final DateTime now = DateTime.now();

                    _value.setTime = DateTime(
                      now.year,
                      now.month,
                      now.day,
                      pickedTime.hour,
                      pickedTime.minute,
                    );

                    final DateTime parsedTime = DateFormat.jm()
                        // ignore: use_build_context_synchronously
                        .parse(pickedTime.format(context));

                    final String formattedTime =
                        DateFormat('HH:mm:ss').format(parsedTime);

                    setState(() {
                      timeController.text =
                          formattedTime; //set the value of text field.
                    });
                  }
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: DropdownButtonWidget(
                labelText: 'Posicion Materna',
                enumValues: MaternalPosition.values,
                onValueChanged: (MaternalPosition value) {
                  _value.maternalPosition = value;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: arterialPressureWidget,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: maternalPulseWidget,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: fetalHeartRateWidget,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: contractionsDurationWidget,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Frec. Contracciones',
                ),
                maxLength: 3,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Frequency Contraction';
                  }
                  return null;
                },
                onChanged: (String? value) {
                  _value.frequencyContractions = value;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: DropdownButtonWidget(
                labelText: 'Dolor Localizacion',
                enumValues: PainLocation.values,
                onValueChanged: (PainLocation value) {
                  _value.painLocation = value.value;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: DropdownButtonWidget(
                labelText: 'Dolor Intensidad',
                enumValues: PainIntensity.values,
                onValueChanged: (PainIntensity value) {
                  _value.painIntensity = value.value;
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
                    onPressed: () => Navigator.pop(
                      context,
                      _value.copyWith(
                        arterialPressure: arterialPressureWidget.value,
                        fetalHeartRate: fetalHeartRateWidget.value,
                        contractionsDuration: contractionsDurationWidget.value,
                        maternalPulse: maternalPulseWidget.value,
                      ),
                    ),
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
  DateTime? time;
  String? arterialPressure;
  String? maternalPulse;
  MaternalPosition? maternalPosition;
  String? fetalHeartRate;
  String? contractionsDuration;
  String? frequencyContractions;
  String? painIntensity;
  String? painLocation;

  _ResultValues({
    required this.time,
    required this.arterialPressure,
    required this.maternalPulse,
    required this.fetalHeartRate,
    required this.maternalPosition,
    required this.contractionsDuration,
    required this.frequencyContractions,
    required this.painIntensity,
    required this.painLocation,
  });

  // Getters para obtener los valores de todos los campos
  DateTime? get getTime => time;
  String? get getArterialPressure => arterialPressure;
  String? get getMaternalPulse => maternalPulse;
  String? get getFetalHeartRate => fetalHeartRate;
  String? get getContractionsDuration => contractionsDuration;
  String? get getFrequencyContractions => frequencyContractions;
  String? get getPainIntensity => painIntensity;
  String? get getPainLocation => painLocation;

  set setTime(DateTime? value) {
    time = value;
  }

  set setArterialPressure(String? value) {
    arterialPressure = value;
  }

  set setMaternalPulse(String? value) {
    maternalPulse = value;
  }

  set setFetalHeartRate(String? value) {
    fetalHeartRate = value;
  }

  set setContractionsDuration(String? value) {
    contractionsDuration = value;
  }

  set setFrequencyContractions(String? value) {
    frequencyContractions = value;
  }

  set setPainIntensity(String? value) {
    painIntensity = value;
  }

  set setPainLocation(String? value) {
    painLocation = value;
  }

  _ResultValues copyWith({
    DateTime? time,
    String? arterialPressure,
    String? maternalPulse,
    String? fetalHeartRate,
    String? contractionsDuration,
    String? frequencyContractions,
    String? painIntensity,
    String? painLocation,
    MaternalPosition? maternalPosition,
  }) {
    return _ResultValues(
      time: time ?? this.time,
      arterialPressure: arterialPressure ?? this.arterialPressure,
      maternalPulse: maternalPulse ?? this.maternalPulse,
      fetalHeartRate: fetalHeartRate ?? this.fetalHeartRate,
      contractionsDuration: contractionsDuration ?? this.contractionsDuration,
      frequencyContractions:
          frequencyContractions ?? this.frequencyContractions,
      painIntensity: painIntensity ?? this.painIntensity,
      painLocation: painLocation ?? this.painLocation,
      maternalPosition: maternalPosition ?? this.maternalPosition,
    );
  }
}
