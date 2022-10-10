import 'package:equatable/equatable.dart';
import 'package:meet_n_train_task/core/utils/enums.dart';
import 'package:meet_n_train_task/events/domain/entities/event.dart';

class EventsState extends Equatable {
  final List<Event> events;
  final RequestState eventsState;
  final String eventsMessage;

  const EventsState({
    this.events = const [],
    this.eventsState = RequestState.loading,
    this.eventsMessage = '',
  });

  EventsState copyWith({
    List<Event>? events,
    RequestState? eventsState,
    String? eventsMessage,
  }) {
    return EventsState(
      events: events ?? this.events,
      eventsState: eventsState ?? this.eventsState,
      eventsMessage: eventsMessage ?? this.eventsMessage,
    );
  }

  @override
  List<Object?> get props => [
        events,
        eventsState,
        eventsMessage,
      ];
}
