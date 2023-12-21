import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/presentation/partograph/blocs/general/state/state.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class GeneralCardWidget extends StatelessWidget {
  const GeneralCardWidget({
    super.key,
    required this.general,
    required this.callback,
  });

  final General general;
  final void Function(GeneralItemEvent event) callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 5,
          ),
          width: 250, // Establece el ancho que desees
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                general.name,
                softWrap: true,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Text(
                  '${general.recordNumber} - ${general.date}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                // Llama al método showDialog para mostrar el modal
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // Devuelve una instancia de tu CustomModal
                    return CustomModal(
                      partographId: general.partographId,
                      initialName: general.name,
                      initialRecordNumber: general.recordNumber,
                      initialDate:
                          DateFormat('yyyy-MM-dd').format(general.date),
                      callback: callback,
                    );
                  },
                );
              },
              child: const Text('Modificar'),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomModal extends StatefulWidget {
  final int partographId;
  final String initialName;
  final String initialRecordNumber;
  final String initialDate;
  final void Function(GeneralItemEvent event) callback;

  const CustomModal({
    required this.partographId,
    this.initialName = '',
    this.initialRecordNumber = '',
    this.initialDate = '',
    required this.callback,
  });

  @override
  _CustomModalState createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal> {
  late TextEditingController _nameTextController;
  late TextEditingController _recordNumberTextController;
  late TextEditingController _dateTextController;

  @override
  void initState() {
    super.initState();

    _nameTextController = TextEditingController(text: widget.initialName);
    _recordNumberTextController =
        TextEditingController(text: widget.initialRecordNumber);
    _dateTextController = TextEditingController(text: widget.initialDate);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: _nameTextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
                hintText: 'Ingrese el nombre',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: _recordNumberTextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Expediente',
                hintText: 'Ingrese el numero de expediente',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: _dateTextController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tiempo',
              ),
              readOnly: true,
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null) {
                  final String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);

                  setState(() {
                    _dateTextController.text = formattedDate;
                  });
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Cierra el modal sin hacer nada
                  },
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.callback(
                      UpdateGeneralData(
                        widget.partographId,
                        _nameTextController.text,
                        _recordNumberTextController.text,
                        DateTime.parse(_dateTextController.text),
                      ),
                    );
                    context.popRoute();
                  },
                  child: const Text('Aceptar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
