import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_n_train_task/app/enums.dart';
import 'package:meet_n_train_task/presentation/controllers/events_bloc.dart';
import 'package:meet_n_train_task/presentation/controllers/events_state.dart';
import 'package:meet_n_train_task/presentation/screens/events/widgets/event_card.dart';

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
            return ListView.separated(
              itemBuilder: ((context, index) {
                return CustomEventCard(data: state.events[index]);
              }),
              separatorBuilder: ((context, index) => const SizedBox(
                    height: 10.0,
                  )),
              itemCount: state.events.length,
            );
          case RequestState.failure:
            return Center(child: Text(state.eventsMessage));
        }
      },
    );
  }
}
