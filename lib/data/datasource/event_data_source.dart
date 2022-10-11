import 'package:meet_n_train_task/data/error/dio_helper.dart';
import 'package:meet_n_train_task/data/error/exceptions.dart';
import 'package:meet_n_train_task/data/network/api_constance.dart';
import 'package:meet_n_train_task/data/network/error_message_model.dart';
import 'package:meet_n_train_task/data/models/event_model.dart';

// Contract class for Remote Data Source with abstract methods from UseCases
abstract class BaseEventRemoteDataSource {
  Future<List<EventModel>> getEvents();
}

// Concrete class for Remote Data Source
class EventRemoteDataSource extends BaseEventRemoteDataSource {
  @override
  Future<List<EventModel>> getEvents() async {
    final response = await DioHelper.getData(
      url: '${ApiConstance.baseUrl}&date_gte=${DateTime.now()}',
      token: ApiConstance.token,
    );

    if (response.statusCode == 200) {
      return List<EventModel>.from(
        (response.data as List).map(
          (e) => EventModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
