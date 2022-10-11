import 'package:get_it/get_it.dart';
import 'package:meet_n_train_task/data/datasource/event_data_source.dart';
import 'package:meet_n_train_task/data/repository/events_repository.dart';
import 'package:meet_n_train_task/domain/repository/base_events_repository.dart';
import 'package:meet_n_train_task/domain/usecases/get_events_usecase.dart';
import 'package:meet_n_train_task/presentation/controllers/events_bloc.dart';


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
