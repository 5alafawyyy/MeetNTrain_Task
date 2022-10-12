import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_n_train_task/app/services_locator.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/components/custom_appbar.dart';
import 'package:meet_n_train_task/presentation/screens/events/view/components/events_body.dart';
import 'package:meet_n_train_task/presentation/screens/events/event_bloc/events_bloc.dart';
import 'package:meet_n_train_task/presentation/screens/events/event_bloc/events_event.dart';
import 'package:meet_n_train_task/presentation/resources/strings_manager.dart';

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
        body: EventsBody(),
      ),
    );
  }
}
