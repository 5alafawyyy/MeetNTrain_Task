import 'package:flutter/material.dart';
import 'package:meet_n_train_task/presentation/resources/color_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManager.lightGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s25),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: child,
        ),
      ),
    );
  }
}
