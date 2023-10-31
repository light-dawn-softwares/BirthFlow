import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

enum _Options { newPartograph, configuration, information }

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BirthFlow'),
        actions: <Widget>[
          PopupMenuButton<_Options>(
            padding: const EdgeInsets.all(12),
            position: PopupMenuPosition.under,
            onSelected: (_Options item) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<_Options>>[
              const PopupMenuItem<_Options>(
                value: _Options.newPartograph,
                child: Text('Nuevo Partograma'),
              ),
              const PopupMenuItem<_Options>(
                value: _Options.configuration,
                child: Text('Configuracion'),
              ),
              const PopupMenuItem<_Options>(
                value: _Options.information,
                child: Text('Informacion'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Nuevo',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
