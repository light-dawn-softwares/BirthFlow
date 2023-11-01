import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ConfigurationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<ConfigurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'), 
      ),
    );
  }
}
