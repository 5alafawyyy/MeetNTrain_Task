import 'package:meet_n_train_task/domain/entities/image.dart';

class ImageModel extends Image {
  const ImageModel({
    required super.url,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        url: json['url'],
      );
}
