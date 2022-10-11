
// Network Server Exceptions
import 'package:meet_n_train_task/data/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({
    required this.errorMessageModel,
  });
}

// Local Database Exceptions
class LocalDatabaseexception implements Exception {
  final String message;

  LocalDatabaseexception({
    required this.message,
  });
}
