import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/config/router/app_router.dart';
import 'package:birthflow/src/presentation/partograph/lib/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class PartographScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PartographState();
}

class _PartographState extends State<PartographScreen> {
  final PageController controller = PageController();
  final PageController controller2 = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partograma 1'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                                'Maria Antonia De los Angeles Sanchez',
                                softWrap: true,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'Expediente - Fecha 1',
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
                              onPressed: () {},
                              child: const Text('Modificar'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const ChartRoute());
                      },
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        height: 250,
                        width: double.infinity,
                        child: PointsLineChart.withSampleData(),
                      ),
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
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
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    Text(
                      'Nota de Parto',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextField(
                      controller: TextEditingController(text: 'Hola'),
                      readOnly: true,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
