import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/config/router/app_router.dart';
import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';
import 'package:birthflow/src/locator.dart';
import 'package:birthflow/src/presentation/home/bloc/home_list/bloc.dart';
import 'package:birthflow/src/presentation/home/bloc/home_list/state/state.dart';
import 'package:birthflow/src/presentation/home/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GeneralBloc>(
          create: (context) => GeneralBloc(
            locator<GeneralGetUseCase>(),
          )..add(const GeneralEvent.fetchGeneralData()),
        ),
      ],
      child: _HomeView(),
    );
  }
}

enum _Options { newPartograph, configuration, information }

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BirthFlow'),
          elevation: 2,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton<_Options>(
              padding: const EdgeInsets.all(12),
              position: PopupMenuPosition.under,
              onSelected: (_Options item) {
                if (item == _Options.newPartograph) {
                  context.router.push(const NewPartographRoute());
                }

                if (item == _Options.configuration) {
                  context.router.push(const ConfigurationRoute());
                }
              },
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
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(
              kToolbarHeight,
            ), // Ajusta la altura según tu diseño
            child: SizedBox(
              width: double.infinity,
              child: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: 'Partogramas',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BlocBuilder<GeneralBloc, GeneralState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (generalData) {
                    return CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              if (index == 0) {
                                return const ListTile(
                                  leading: Icon(Icons.archive),
                                  title: Text('Archivados'),
                                );
                              } else {
                                // Aquí deberías utilizar los datos generales que obtuviste del Bloc
                                final item = generalData[index - 1];
                                return ListItemWidget(
                                  partographId: item.partographId,
                                  title: item.name,
                                  subtitle:
                                      '${item.recordNumber}-${item.date.toIso8601String()}',
                                );
                              }
                            },
                            childCount: generalData.length + 1,
                          ),
                        ),
                      ],
                    );
                  },
                  error: (errorMessage) =>
                      Center(child: Text('Error: $errorMessage')),
                  empty: () => const Center(
                    child: Text('No hay datos'),
                  ),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Nuevo',
          onPressed: () {
            context.router.push(const NewPartographRoute());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
