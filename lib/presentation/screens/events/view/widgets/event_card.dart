import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meet_n_train_task/data/network/api_constance.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';
import 'package:meet_n_train_task/presentation/resources/strings_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';
import 'package:intl/intl.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/widgets/custom_circle_avatar.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/widgets/custom_rounded_container.dart';
import 'package:meet_n_train_task/app/extensions.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/widgets/overlapping_circle_avatars.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/widgets/payment_part.dart';

class CustomEventCard extends StatelessWidget {
  const CustomEventCard({super.key, required this.data});
  final Event data;

  @override
  Widget build(BuildContext context) {
    List<String> usersjoinedImagesUrls = [];
    for (int i = 0; i < data.users!.length; i++) {
      usersjoinedImagesUrls.add(data.users![i].profilePicture.toString());
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            _cardHeader(context: context),
            _cardDescription(context: context),
            _cardBottom(images: usersjoinedImagesUrls),
          ],
        ),
      ),
    );
  }

  SizedBox _cardHeader({required BuildContext context}) {
    return SizedBox(
      width: double.infinity,
      height: 0.5.sw,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s15),
            ),
            child: Image.network(
              ApiConstance.imageUrl(
                imageKey: data.featuredImage!,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: AppMargin.m10,
            left: AppMargin.m10,
            child: CustomRoundedContainer(
              child: Row(
                children: [
                  CustomCircleAvatar(
                    imageKey: data.tag!.icon!,
                    radius1: AppSize.s17,
                    radius2: AppSize.s17,
                  ),
                  const SizedBox(
                    width: AppSize.s10,
                  ),
                  Text(
                    data.tag!.title!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: AppMargin.m10,
            left: AppMargin.m10,
            child: CustomRoundedContainer(
              child: Text(
                (data.spots == 0)
                    ? AppStrings.unLimitedSpots
                    : '${data.spots} ${AppStrings.spotsLeft}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _cardDescription({required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s10,
        ),
        Text(
          DateFormat(AppStrings.myDateFormat).format(
            DateTime.parse(data.date!),
          ),
        ),
        Text(
          data.title!.capitalizeFirstofEach,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          data.placeName!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '${DateTime.parse(data.date!).difference(data.cancelledAt!).inDays.toString()} ${AppStrings.daysLeft}',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }

  Row _cardBottom({required List<String> images}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OverlappingCircleAvatar(
          images: images,
        ),
        PaymetPart(
          data: data,
        ),
      ],
    );
  }
}
