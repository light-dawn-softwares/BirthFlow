import 'package:birthflow/src/presentation/partograph/widgets/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';

class MedicalSurveillanceCardWidget extends StatefulWidget {
  const MedicalSurveillanceCardWidget({super.key});

  @override
  State<MedicalSurveillanceCardWidget> createState() =>
      _MedicalSurveillanceCardState();
}

class _MedicalSurveillanceCardState
    extends State<MedicalSurveillanceCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tabla de Vigilancia',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Añadir'),
            ),
          ],
        ),
        const MedicalSurveillanceWidget(
          list: [],
        ),
      ],
    );
  }
}
