
import 'package:device_apps/device_apps.dart';

abstract class HomeState{}

class HomeInitState extends HomeState {
  HomeInitState({required this.apps});
  final List<Application> apps;
}
class HomeErrorState extends HomeState {
}
class HomeLoadingState extends HomeState {
}