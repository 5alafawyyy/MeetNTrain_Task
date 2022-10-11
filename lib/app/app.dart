import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_n_train_task/presentation/resources/strings_manager.dart';
import 'package:meet_n_train_task/presentation/resources/theme_manager.dart';
import 'package:meet_n_train_task/presentation/screens/events/events_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.applicationTitle,
          theme: getApplicationTheme(),
          home: const EventsScreen(),
        );
      }),
    );
  }
}
