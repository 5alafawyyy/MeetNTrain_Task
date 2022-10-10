import 'package:meet_n_train_task/events/domain/entities/community.dart';

class CommunityModel extends Community {
  const CommunityModel({
    required super.id,
    required super.title,
    required super.image,
    required super.bio,
    required super.points,
    required super.ratingCount,
    required super.connectionCount,
    required super.eventCount,
    required super.profilePicture,
    required super.deeplink,
    required super.linkExpiry,
    required super.state,
  });

  factory CommunityModel.fromJson(Map<String, dynamic> json) => CommunityModel(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        bio: json['bio'],
        points: json['points'],
        ratingCount: json['rating_count'],
        connectionCount: json['connection_count'],
        eventCount: json['event_count'],
        profilePicture: json['profile_picture'],
        deeplink: json['deeplink'],
        linkExpiry: json['link_expiry'],
        state: json['state'],
      );
}
