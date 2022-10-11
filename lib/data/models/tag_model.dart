import 'package:meet_n_train_task/domain/entities/tag.dart';

class TagModel extends Tag {
  const TagModel({
    required super.id,
    required super.title,
    required super.icon,
  });

  factory TagModel.fromJson(Map<String, dynamic> json) => TagModel(
        id: json['id'],
        title: json['title'],
        icon: json['icon'],
      );
}
