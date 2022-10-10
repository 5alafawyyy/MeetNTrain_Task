import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? bio;
  final String? profilePicture;
  final int? points;
  final String? mobile;
  final String? countryCode;
  final bool? isVerified;
  final bool? isTrusted;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.bio,
    required this.profilePicture,
    required this.points,
    required this.mobile,
    required this.countryCode,
    required this.isVerified,
    required this.isTrusted,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        bio,
        profilePicture,
        points,
        mobile,
        countryCode,
        isVerified,
        isTrusted
      ];
}
