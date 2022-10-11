import 'package:meet_n_train_task/data/error/exceptions.dart';
import 'package:meet_n_train_task/data/error/failure.dart';
import 'package:meet_n_train_task/data/datasource/event_data_source.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';
import 'package:meet_n_train_task/domain/repository/base_events_repository.dart';
import 'package:dartz/dartz.dart';

class EventsRepository extends BaseEventsRepository {
  final BaseEventRemoteDataSource baseEventRemoteDataSource;

  EventsRepository(this.baseEventRemoteDataSource);

  @override
  Future<Either<Failure, List<Event>>> getEvents() async {
    final result = await baseEventRemoteDataSource.getEvents();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
