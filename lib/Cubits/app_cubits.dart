import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Cubits/app_cubit_states.dart';
import 'package:travel_app/Models/data_model.dart';
import 'package:travel_app/Screens/detailed_page.dart';
import 'package:travel_app/Services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  // AppCubits(super.InitialState()){
  //   emit(WelcomeState());
  // }
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  getData() async {
   try{
     emit(LoadingState());
     places = await data.getInfo();
     emit(LoadedState(places: places));
   }catch(e){
   }
  }

  detailedPage(DataModel data){
    emit(DetailState(place: data));
  }

  goHome(){
    emit(LoadedState(places: places));
  }
}