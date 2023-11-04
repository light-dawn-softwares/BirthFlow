import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';
import 'package:birthflow/src/presentation/widgets/work_time/work_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

@RoutePage()
class NewPartographScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewPartographState();
}

class _NewPartographState extends State<NewPartographScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  final WorkTime workTime = WorkTime(
    idPartograph: -1,
    posicion: const Posicion.init(),
    paridad: const Paridad.init(),
    membranas: const Membranas.init(),
  );

  late TextEditingController _nameTextController;
  late TextEditingController _recordNumberTextController;
  late TextEditingController _dateTextController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _nameTextController = TextEditingController(text: '');
    _recordNumberTextController = TextEditingController(text: '');
    _dateTextController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final willPopScope = await showWarning(context);
        return willPopScope ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nuevo Partograma'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'Datos enerales',
              ),
              Tab(
                text: 'Construccion de la curva de alerta',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                          firstDate: DateTime(
                            2000,
                          ),
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
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: WorkTimeTableWidget(
                currentWorkTime: workTime,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Desea volver? '),
          content:
              const Text('Desea cancelar la creacion del nuevo partograma?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context, true);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
