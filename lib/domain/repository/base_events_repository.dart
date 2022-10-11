import 'package:dartz/dartz.dart';
import 'package:meet_n_train_task/data/error/failure.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';

abstract class BaseEventsRepository {
  Future<Either<Failure, List<Event>>> getEvents();
  
}
