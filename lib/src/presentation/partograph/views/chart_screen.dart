import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/presentation/partograph/widgets/expandable_fab.dart';
import 'package:birthflow/src/presentation/partograph/widgets/hodge_plane_dialog_widget.dart';
import 'package:birthflow/src/presentation/partograph/widgets/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class ChartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State<ChartScreen> {
  int _scrollFab = 0;

  final PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    _scrollFab = 0;
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    final List<Widget> fabs = [
      ExpandableFab(
        distance: 70.0,
        children: [
          Tooltip(
            message: 'Agregar Dilatacion Cervical',
            child: ActionButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ),
          const HodgePlaneDialogWidget(),
        ],
      ),
      FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white70,
              ),
            ),
            const MedicalSurveillanceWidget(
              list: [],
            ),
          ],
        ),
      ),
      floatingActionButton: fabs[_scrollFab],
    );
  }
}
