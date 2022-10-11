import 'package:flutter/material.dart';
import 'package:meet_n_train_task/presentation/resources/color_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    leading: Container(
      margin: const EdgeInsets.all(AppMargin.m4),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.black,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s50,
          ),
        ),
      ),
      child: const Icon(
        Icons.arrow_back,
      ),
    ),
    title: Text(
      title,
    ),
  );
}
