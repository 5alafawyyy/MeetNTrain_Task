import 'package:dartz/dartz.dart';
import 'package:meet_n_train_task/core/error/failure.dart';
import 'package:meet_n_train_task/events/domain/entities/event.dart';

abstract class BaseEventsRepository {
  Future<Either<Failure, List<Event>>> getEvents();
  
}
