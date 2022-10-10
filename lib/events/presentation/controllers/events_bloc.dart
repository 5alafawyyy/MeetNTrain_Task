import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_n_train_task/core/utils/enums.dart';
import 'package:meet_n_train_task/events/domain/usecases/get_now_playing_events_usecase.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_event.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final GetEventsUseCase getEventsUseCase;

  EventsBloc(
    this.getEventsUseCase,
  ) : super(const EventsState()) {
    on<GetEventsEvent>(_getEvents);
  }

  FutureOr<void> _getEvents(
      GetEventsEvent event, Emitter<EventsState> emit) async {
    final result = await getEventsUseCase.excute();
    result.fold((l) {
      emit(state.copyWith(
        eventsState: RequestState.failure,
        eventsMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        events: r,
        eventsState: RequestState.success,
      ));
      
    });
  }
}
