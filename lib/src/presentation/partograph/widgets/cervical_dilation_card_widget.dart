import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:flutter/material.dart';

class CervicalDilationCardWidget extends StatefulWidget {
  const CervicalDilationCardWidget({super.key, required this.list});
  final List<CervicalDilation> list;

  @override
  State<CervicalDilationCardWidget> createState() =>
      _CervicalDilationCardState();
}

class _CervicalDilationCardState extends State<CervicalDilationCardWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.list.isEmpty == false) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dilataciones cervicales',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Añadir'),
              ),
            ],
          ),
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Dilatacion',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  flex: 2,
                  child: Text(
                    'Ram o Rem',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Fecha y Hora',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: widget.list
                .map(
                  (cervicalDilation) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(cervicalDilation.value.toString())),
                      DataCell(
                        Checkbox(
                          value: cervicalDilation.ramOrRem,
                          onChanged: (bool? value) {},
                        ),
                      ),
                      DataCell(Text(cervicalDilation.time.toString())),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dilataciones cervicales',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Añadir'),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text('Agregue una dilatacion cervical'),
          ),
        ],
      );
    }
  }
}
