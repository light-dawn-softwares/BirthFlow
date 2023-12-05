import 'package:birthflow/src/app_dev.dart';
import 'package:birthflow/src/locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(
    AppDev(),
  );
}
