import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meet_n_train_task/app/app.dart';
import 'package:meet_n_train_task/app/services_locator.dart';
import 'package:meet_n_train_task/data/network/dio_helper.dart';

void main() async {
  // Initialize Dio Helper
  await DioHelper.init();

  // Initialize Services Locator
  ServicesLocator().init();

  // For Portrait Only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}
