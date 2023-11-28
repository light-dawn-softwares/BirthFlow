import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/config/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

enum _Options { newPartograph, configuration, information }

class _HomeState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(
            kToolbarHeight,
          ), // Ajusta la altura según tu diseño
          child: SizedBox(
            width: double.infinity,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: const <Widget>[
                Tab(
                  text: 'Partogramas',
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CustomScrollView(
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
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('Partograma $index'),
                        trailing: const SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('01/01/2023'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  if (true) Icon(Icons.push_pin),
                                ],
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          context.router.push(const PartographRoute());
                        },
                        subtitle: const Text('012HMK231D2095 - 01/01/2023'),
                        onLongPress: () => showModalBottomSheet<void>(
                          context: context,
                          showDragHandle: true,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 120,
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: const Icon(Icons.push_pin),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.delete),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  },
                  childCount: 2,
                ),
              ),
            ],
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
    );
  }
}
