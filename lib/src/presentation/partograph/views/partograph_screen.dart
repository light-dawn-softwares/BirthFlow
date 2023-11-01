import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PartographScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PartographState();
}

class _PartographState extends State<PartographScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partograma'),
      ),
    );
  }
}
