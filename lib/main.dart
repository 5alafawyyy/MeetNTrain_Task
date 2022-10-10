import 'package:flutter/material.dart';
import 'package:meet_n_train_task/core/error/dio_helper.dart';
import 'package:meet_n_train_task/core/services/services_locator.dart';
import 'package:meet_n_train_task/events/presentation/screens/home.dart';

void main() async {
  await DioHelper.init();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetNTrain Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
