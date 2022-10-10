import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meet_n_train_task/core/error/failure.dart';

abstract class BaseUsecase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class Parameters extends Equatable{
  @override
  List<Object?> get props => [];
}
