import 'package:flutter/material.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';
import 'package:meet_n_train_task/presentation/screens/events/widgets/custom_circle_avatar.dart';

class OverlappingCircleAvatar extends StatelessWidget {
  const OverlappingCircleAvatar({super.key, required this.images});
  
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < images.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: AppMargin.m6,
                horizontal: AppMargin.m4,
              ),
              child: Align(
                widthFactor: AppSize.s0_5,
                child: CustomCircleAvatar(
                  imageKey: images[i],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
