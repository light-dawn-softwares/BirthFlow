import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/config/router/app_router.dart';
import 'package:birthflow/src/core/general/domain/usecases/find_by_usecase.dart';
import 'package:birthflow/src/core/general/domain/usecases/update_usecase.dart';
import 'package:birthflow/src/locator.dart';
import 'package:birthflow/src/presentation/home/bloc/home_list/bloc.dart';
import 'package:birthflow/src/presentation/home/bloc/home_list/state/state.dart';
import 'package:birthflow/src/presentation/partograph/blocs/general/bloc.dart';
import 'package:birthflow/src/presentation/partograph/blocs/general/state/state.dart';
import 'package:birthflow/src/presentation/partograph/lib/chart.dart';
import 'package:birthflow/src/presentation/partograph/widgets/cervical_dilation_card_widget.dart';
import 'package:birthflow/src/presentation/partograph/widgets/general_card_widget.dart';
import 'package:birthflow/src/presentation/partograph/widgets/medical_surveillance_card_widget.dart';
import 'package:birthflow/src/presentation/partograph/widgets/vpp_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PartographScreen extends StatelessWidget {
  final int partographId;

  // ignore: use_super_parameters
  const PartographScreen({
    Key? key,
    @PathParam('partographId') required this.partographId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneralItemBloc, GeneralItemState>(
      listener: (context, state) {
        if (state is UpdateGeneralData) {
          BlocProvider.of<GeneralBloc>(context)
              .add(const GeneralEvent.fetchGeneralData());
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (BuildContext context) => GeneralItemBloc(
              locator<GeneralFindByUseCase>(),
              locator<GeneralUpdateUseCase>(),
            )..add(GeneralItemEvent.fetchGeneralData(partographId)),
          ),
        ],
        child: _PartographView(),
      ),
    );
  }
}

class _PartographView extends StatelessWidget {
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
                    BlocBuilder<GeneralItemBloc, GeneralItemState>(
                      builder: (BuildContext context, GeneralItemState state) {
                        return state.when(
                          initial: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          empty: () => const Text('No hay dato??'),
                          loaded: (generalData) => GeneralCardWidget(
                            general: generalData,
                            // ignore: void_checks
                            callback: context.read<GeneralItemBloc>().add,
                          ),
                          error: (error) => Text(error),
                        );
                      },
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
                    const CervicalDilationCardWidget(),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    const VppCardWidget(),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    const MedicalSurveillanceCardWidget(),
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
