import 'package:meet_n_train_task/data/models/community_model.dart';
import 'package:meet_n_train_task/data/models/image_model.dart';
import 'package:meet_n_train_task/data/models/tag_model.dart';
import 'package:meet_n_train_task/data/models/user_model.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';

class EventModel extends Event {
  EventModel({
    super.id,
    super.title,
    super.description,
    super.spots,
    super.price,
    super.lat,
    super.lon,
    super.placeName,
    super.featuredImage,
    super.deeplink,
    super.date,
    super.tagId,
    super.createdBy,
    super.communityId,
    super.whatsappLink,
    super.images,
    super.finishDate,
    super.locationId,
    super.cancelledAt,
    super.isPrivate,
    super.lockedAt,
    super.minimumMembers,
    super.paymentMethod,
    super.receiveUpdates,
    super.state,
    super.isCheckedIn,
    super.isFeatured,
    super.viewersCount,
    super.users,
    super.tag,
    super.community,
    super.isWaiting,
    super.isJoined,
    super.joinedUsersCount,
    super.checkedInCount,
    super.paidAmount,
    super.ownerEarnings,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    spots = json['spots'];
    price = json['price'];
    lat = json['lat'];
    lon = json['lon'];
    placeName = json['placeName'];
    featuredImage = json['featuredImage'];
    deeplink = json['deeplink'];
    date = json['date'];
    tagId = json['tagId'];
    createdBy = json['createdBy'];
    communityId = json['communityId'];
    whatsappLink = json['whatsapp_link'];
    if (json['images'] != null) {
      images = <ImageModel>[];
      json['images'].forEach((v) {
        images!.add(ImageModel.fromJson(v));
      });
    }
    finishDate = json['finish_date'];
    locationId = json['location_id'];
    cancelledAt = json['cancelled_at'] ?? DateTime.now();
    isPrivate = json['is_private'];
    lockedAt = json['lockedAt'] ?? '';
    minimumMembers = json['minimumMembers'] ?? 0;
    paymentMethod = json['paymentMethod'];
    receiveUpdates = json['receiveUpdates'];
    state = json['state'];
    isCheckedIn = json['isCheckedIn'];
    isFeatured = json['isFeatured'];
    viewersCount = json['viewersCount'] ?? 0;
    if (json['users'] != null) {
      users = <UserModel>[];
      json['users'].forEach((v) {
        users!.add(UserModel.fromJson(v));
      });
    }
    tag = json['tag'] != null ? TagModel.fromJson(json['tag']) : null;
    community = json['community'] != null
        ? CommunityModel.fromJson(json['community'])
        : null;
    isWaiting = json['isWaiting'];
    isJoined = json['isJoined'];
    joinedUsersCount = json['joinedUsersCount'];
    checkedInCount = json['checkedInCount'];
    paidAmount = json['paidAmount'];
    ownerEarnings = json['ownerEarnings'];
  }
}
