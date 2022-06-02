
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grid_app/myapp.dart';
import 'package:grid_app/common/observer.dart';


void main() {
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: Observer(),
  );
}


