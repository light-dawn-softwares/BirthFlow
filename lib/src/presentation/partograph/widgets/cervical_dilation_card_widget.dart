import 'package:flutter/material.dart';

class CervicalDilationCardWidget extends StatefulWidget {
  const CervicalDilationCardWidget({super.key});

  @override
  State<CervicalDilationCardWidget> createState() =>
      _CervicalDilationCardState();
}

class _CervicalDilationCardState extends State<CervicalDilationCardWidget> {
  @override
  Widget build(BuildContext context) {
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
