import 'package:meet_n_train_task/events/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.bio,
    required super.profilePicture,
    required super.points,
    required super.mobile,
    required super.countryCode,
    required super.isVerified,
    required super.isTrusted,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        bio: json['bio']??'',
        profilePicture: json['profile_picture'],
        points: json['points'],
        mobile: json['mobile'],
        countryCode: json['country_code'],
        isVerified: json['is_verified'],
        isTrusted: json['isTrusted'],
      );
}
