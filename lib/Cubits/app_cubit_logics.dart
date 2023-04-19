import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Cubits/app_cubit_states.dart';
import 'package:travel_app/Cubits/app_cubits.dart';
import 'package:travel_app/Screens/detailed_page.dart';
import 'package:travel_app/Screens/home_page.dart';
import 'package:travel_app/Screens/nav_pages/main_page.dart';
import 'package:travel_app/Screens/welcome_page.dart';

class CubitLogic extends StatefulWidget {
  const CubitLogic({Key? key}) : super(key: key);

  @override
  State<CubitLogic> createState() => _CubitLogicState();
}

class _CubitLogicState extends State<CubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState)
            return WelcomePage();
          else if (state is LoadingState)
            return Center(
              child: CircularProgressIndicator(),
            );
          else if(state is DetailState){
            return DetailedPage();
          }
          else if (state is LoadedState)
            return MainPage();
          else
            return Container();
        },
      ),
    );
  }
}
