import 'package:dartz/dartz.dart';
import 'package:meet_n_train_task/core/error/failure.dart';
import 'package:meet_n_train_task/events/domain/entities/event.dart';
import 'package:meet_n_train_task/events/domain/repository/base_events_repository.dart';

class GetEventsUseCase {
  // inject repo
  final BaseEventsRepository baseEventsRepository;

  GetEventsUseCase(this.baseEventsRepository);

  Future<Either<Failure, List<Event>>> excute() async {
    return await baseEventsRepository.getEvents();
    
  }
}
