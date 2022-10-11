import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_n_train_task/data/network/api_constance.dart';
import 'package:meet_n_train_task/app/services_locator.dart';
import 'package:meet_n_train_task/app/enums.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';
import 'package:meet_n_train_task/presentation/controllers/events_bloc.dart';
import 'package:meet_n_train_task/presentation/controllers/events_event.dart';
import 'package:meet_n_train_task/presentation/controllers/events_state.dart';
import 'package:meet_n_train_task/presentation/resources/color_manager.dart';
import 'package:meet_n_train_task/presentation/resources/strings_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';
import 'package:intl/intl.dart';
import 'package:meet_n_train_task/presentation/screens/common/custom_appbar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<EventsBloc>()..add(GetEventsEvent()),
      child: Scaffold(
        appBar: customAppBar(
          title: AppStrings.schedule,
        ),
        body: const EventsBody(),
      ),
    );
  }
}

class EventsBody extends StatelessWidget {
  const EventsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        switch (state.eventsState) {
          case RequestState.loading:
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          case RequestState.success:
            Event data = state.events[6];
            List<String> usersjoinedImagesUrls = [];
            for (int i = 0; i < data.users!.length; i++) {
              usersjoinedImagesUrls
                  .add(data.users![i].profilePicture.toString());
            }
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s250,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(AppSize.s15),
                        ),
                        child: Image.network(
                          ApiConstance.imageUrl(
                            imageKey: data.community!.image!,
                            width: 360,
                            height: 250,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s10,
                    ),
                    Text(
                      DateFormat(AppStrings.myDateFormat).format(
                        DateTime.parse(data.date!),
                      ),
                    ),
                    Text(
                      data.title!,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      data.placeName!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${DateTime.parse(data.date!).difference(data.cancelledAt!).inDays.toString()} ${AppStrings.daysLeft}',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: AppPadding.p15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int i = 0;
                                      i < usersjoinedImagesUrls.length;
                                      i++)
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: AppMargin.m6,
                                        horizontal: AppMargin.m4,
                                      ),
                                      child: Align(
                                        widthFactor: AppSize.s0_5,
                                        child: CircleAvatar(
                                          radius: AppSize.s22,
                                          backgroundColor: ColorManager.white,
                                          child: CircleAvatar(
                                            radius: AppSize.s20,
                                            backgroundImage: NetworkImage(
                                              ApiConstance.imageUrl(
                                                imageKey:
                                                    usersjoinedImagesUrls[i],
                                                width: 0,
                                                height: 0,
                                              ),
                                              scale: 0.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                (data.paymentMethod == AppStrings.cashOnline)
                                    ? Row(
                                        children: const [
                                          Icon(Icons.paid_outlined),
                                          Icon(Icons.payment_outlined),
                                          Icon(Icons.wallet_outlined),
                                        ],
                                      )
                                    : (data.paymentMethod == AppStrings.online)
                                        ? Row(
                                            children: const [
                                              Icon(Icons.payment_outlined),
                                              Icon(Icons.wallet_outlined),
                                            ],
                                          )
                                        : const Icon(Icons.paid_outlined),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '${AppStrings.aed} ${data.price!.toDouble()}',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );

          case RequestState.failure:
            return Center(child: Text(state.eventsMessage));
        }
      },
    );
  }
}
/** // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: NetworkImage(
                    //       ApiConstance.imageUrl(
                    //         imageKey: state.events.last.community!.image!,
                    //         width: 200,
                    //         height: 200,
                    //       ),
                    //     ),
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    */
// Whish PayMents
                    // Text(
                    //   (data.paymentMethod! == AppStrings.cashOnline ||
                    //           data.paymentMethod! == AppStrings.onlineCash ||
                    //           (data.paymentMethod! == AppStrings.online &&
                    //               data.paymentMethod! == AppStrings.cash))
                    //       ? AppStrings.allPayments
                    //       : data.paymentMethod!,
                    //   style: Theme.of(context).textTheme.headlineLarge,
                    // ),