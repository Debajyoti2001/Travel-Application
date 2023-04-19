import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Cubits/app_cubits.dart';
import 'package:travel_app/Screens/detailed_page.dart';
import 'package:travel_app/Screens/nav_pages/main_page.dart';
import 'package:travel_app/Services/data_services.dart';

import 'Cubits/app_cubit_logics.dart';
import 'Screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(data: DataServices()),
        child: CubitLogic(),
      ),
    );
  }
}
