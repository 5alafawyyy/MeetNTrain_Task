import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_n_train_task/data/network/api_constance.dart';
import 'package:meet_n_train_task/presentation/resources/color_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.imageKey,
    this.radius1 = AppSize.s22,
    this.radius2 = AppSize.s20,
  });

  final String imageKey;
  final double radius1;
  final double radius2;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius1.r,
      backgroundColor: ColorManager.white,
      child: CircleAvatar(
        radius: radius2.r,
        backgroundImage: NetworkImage(
          ApiConstance.imageUrl(
            imageKey: imageKey,
            width: 0,
            height: 0,
          ),
          scale: 0.2,
        ),
      ),
    );
  }
}
