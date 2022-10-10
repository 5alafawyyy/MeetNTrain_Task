import 'package:meet_n_train_task/events/domain/entities/community.dart';
import 'package:meet_n_train_task/events/domain/entities/image.dart';
import 'package:meet_n_train_task/events/domain/entities/tag.dart';
import 'package:meet_n_train_task/events/domain/entities/user.dart';

class Event {
  int? id;
  String? title;
  String? description;
  int? spots;
  int? price;
  double? lat;
  double? lon;
  String? placeName;
  String? featuredImage;
  String? deeplink;
  String? date;
  int? tagId;
  int? createdBy;
  int? communityId;
  String? whatsappLink;
  List<Image>? images;
  String? finishDate;
  int? locationId;
  DateTime? cancelledAt;
  bool? isPrivate;
  String? lockedAt;
  int? minimumMembers;
  String? paymentMethod;
  bool? receiveUpdates;
  String? state;
  bool? isCheckedIn;
  bool? isFeatured;
  int? viewersCount;
  List<User>? users;
  Tag? tag;
  Community? community;
  bool? isWaiting;
  bool? isJoined;
  int? joinedUsersCount;
  int? checkedInCount;
  int? paidAmount;
  int? ownerEarnings;

  Event({
    this.id,
    this.title,
    this.description,
    this.spots,
    this.price,
    this.lat,
    this.lon,
    this.placeName,
    this.featuredImage,
    this.deeplink,
    this.date,
    this.tagId,
    this.createdBy,
    this.communityId,
    this.whatsappLink,
    this.images,
    this.finishDate,
    this.locationId,
    this.cancelledAt,
    this.isPrivate,
    this.lockedAt,
    this.minimumMembers,
    this.paymentMethod,
    this.receiveUpdates,
    this.state,
    this.isCheckedIn,
    this.isFeatured,
    this.viewersCount,
    this.users,
    this.tag,
    this.community,
    this.isWaiting,
    this.isJoined,
    this.joinedUsersCount,
    this.checkedInCount,
    this.paidAmount,
    this.ownerEarnings,
  });
}
