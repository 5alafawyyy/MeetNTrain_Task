import 'package:equatable/equatable.dart';

class Community extends Equatable {
  final int? id;
  final String? title;
  final String? image;
  final String? bio;
  final int? points;
  final int? ratingCount;
  final int? connectionCount;
  final int? eventCount;
  final String? profilePicture;
  final String? deeplink;
  final String? linkExpiry;
  final String? state;

  const Community({
    required this.id,
    required this.title,
    required this.image,
    required this.bio,
    required this.points,
    required this.ratingCount,
    required this.connectionCount,
    required this.eventCount,
    required this.profilePicture,
    required this.deeplink,
    required this.linkExpiry,
    required this.state,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        image,
        bio,
        points,
        ratingCount,
        connectionCount,
        eventCount,
        profilePicture,
        deeplink,
        linkExpiry,
        linkExpiry,
        state,
      ];
}
