
import 'package:device_apps/device_apps.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grid_app/presentation/home/bloc/home_event.dart';
import 'package:grid_app/presentation/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{

  List<Application> _apps = [];
  HomeBloc() : super(HomeInitState(apps: [])){
    on<HomeInitEvent>(_onInitEvent);

  }
  Future<void> _onInitEvent(
      HomeInitEvent event, Emitter<HomeState> emit) async {
    _apps = await DeviceApps.getInstalledApplications(includeSystemApps: true,includeAppIcons: true);
    if(_apps.isNotEmpty ){
      emit(HomeInitState(apps: _apps));
    }else{
      emit(HomeLoadingState());
    }
  }

}