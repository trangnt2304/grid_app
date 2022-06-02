import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grid_app/presentation/home/bloc/home_bloc.dart';
import 'package:grid_app/presentation/home/bloc/home_event.dart';
import 'package:grid_app/presentation/home/bloc/home_state.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final HomeBloc _homeBloc = HomeBloc();
  @override
  void initState() {
    _homeBloc.add(HomeInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildItem(Application text) {
      return Container(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            Text(text.appName),
          ],
        ),
      );
    }

    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) => _homeBloc,
        child: Scaffold(
          body: Center(
            child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              if (state is HomeInitState) {
                return Text(state.apps[0].appName);
              } else {
                return Container();
              }
            }),
          ),
        ),
      ),
    );
  }
}
