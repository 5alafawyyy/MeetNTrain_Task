import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:meet_n_train_task/app/enums.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/widgets/event_card.dart';
import 'package:meet_n_train_task/presentation/screens/events/event_bloc/events_bloc.dart';
import 'package:meet_n_train_task/presentation/screens/events/event_bloc/events_state.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';

class EventsBody extends StatelessWidget {
  EventsBody({Key? key}) : super(key: key);
  final ScrollController? controller = ScrollController();
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
            return GroupedListView(
              physics: const BouncingScrollPhysics(),
              controller: controller,
              elements: state.events,
              groupBy: (element) => element.date,
              groupSeparatorBuilder: (value) {
                String day = DateFormat('dd').format(
                  DateTime.parse(value!),
                );
                String dayStr = DateFormat('EEEE').format(
                  DateTime.parse(value),
                );
                String mYear = DateFormat('MMM y').format(
                  DateTime.parse(value),
                );

                return Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  color: Colors.white,
                  child: Row(children: [
                    Text(
                      day,
                      style: Theme.of(context).textTheme.displayLarge,
                      textScaleFactor: 1.5,
                    ),
                    const SizedBox(
                      width: AppSize.s10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(dayStr,
                            style: Theme.of(context).textTheme.titleMedium!),
                        Text(mYear,
                            style: Theme.of(context).textTheme.displaySmall!),
                      ],
                    ),
                  ]),
                );
              },
              useStickyGroupSeparators: true,
              indexedItemBuilder: ((context, element, index) {
                return CustomEventCard(data: state.events[index]);
              }),
            );

          case RequestState.failure:
            return Center(child: Text(state.eventsMessage));
        }
      },
    );
  }
}


// return ListView.separated(
//               itemBuilder: ((context, index) {
//                 return CustomEventCard(data: state.events[index]);
//               }),
//               separatorBuilder: ((context, index) => const SizedBox(
//                     height: 10.0,
//                   )),
//               itemCount: state.events.length,
//             );

// String date = DateFormat(AppStrings.verticalDateFormat).format(
//                   DateTime.parse(value!),
//                 );

/**
 * return Timeline.builder(
              primary: true,
              position: TimelinePosition.Left,
              lineColor: ColorManager.grey,
              lineWidth: AppSize.s1,
              itemBuilder: ((context, index) {
                return TimelineModel(
                  CustomEventCard(data: state.events[index]),
                  icon: Icon(Icons.receipt, color: Colors.white),
                  iconBackground: ColorManager.primary,
                  isLast: true,
                );
              }),
              itemCount: state.events.length,
            );

 */