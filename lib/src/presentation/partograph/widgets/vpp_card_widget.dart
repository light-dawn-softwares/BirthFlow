import 'package:flutter/material.dart';

class VppCardWidget extends StatefulWidget {
  const VppCardWidget({super.key});

  @override
  State<VppCardWidget> createState() =>
      _VppCardState();
}

class _VppCardState extends State<VppCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Variedad de la presentacion',
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
                  'Posicion',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                flex: 2,
                child: Text(
                  'Plano de Hodge',
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
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('5')),
                DataCell(
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                ),
                DataCell(Text(DateTime.now().toString())),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('7')),
                DataCell(
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                ),
                DataCell(Text(DateTime.now().toString())),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('6')),
                DataCell(
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                ),
                DataCell(Text(DateTime.now().toString())),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
