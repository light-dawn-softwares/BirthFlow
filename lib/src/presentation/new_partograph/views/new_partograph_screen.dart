import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewPartographScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewPartographState();
}

class _NewPartographState extends State<NewPartographScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Partograma'),
      ),
    );
  }
}
