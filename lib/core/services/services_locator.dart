import 'package:get_it/get_it.dart';
import 'package:meet_n_train_task/events/data/datasource/event_data_source.dart';
import 'package:meet_n_train_task/events/data/repository/events_repository.dart';
import 'package:meet_n_train_task/events/domain/repository/base_events_repository.dart';
import 'package:meet_n_train_task/events/domain/usecases/get_now_playing_events_usecase.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_bloc.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // BloC
    sl.registerFactory(() => EventsBloc(
          sl(),
        ));

    // Use Cases
    sl.registerLazySingleton(() => GetEventsUseCase(sl()));
    

    // Repository
    sl.registerLazySingleton<BaseEventsRepository>(
        () => EventsRepository(sl()));

    // DATA SOURCE
    sl.registerLazySingleton<BaseEventRemoteDataSource>(
        () => EventRemoteDataSource());
  }
}
