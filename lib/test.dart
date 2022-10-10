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
  List<Images>? images;
  String? finishDate;
  int? locationId;
  String? cancelledAt;
  bool? isPrivate;
  String? lockedAt;
  int? minimumMembers;
  String? paymentMethod;
  bool? receiveUpdates;
  String? state;
  bool? isCheckedIn;
  bool? isFeatured;
  int? viewersCount;
  List<Users>? users;
  Tag? tag;
  Community? community;
  bool? isWaiting;
  bool? isJoined;
  int? joinedUsersCount;
  int? checkedInCount;
  int? paidAmount;
  int? ownerEarnings;

  Event(
      {this.id,
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
      this.ownerEarnings});

  Event.fromJson(Map<String, dynamic> json) {
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
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    finishDate = json['finish_date'];
    locationId = json['location_id'];
    cancelledAt = json['cancelled_at'];
    isPrivate = json['is_private'];
    lockedAt = json['lockedAt'];
    minimumMembers = json['minimumMembers'];
    paymentMethod = json['paymentMethod'];
    receiveUpdates = json['receiveUpdates'];
    state = json['state'];
    isCheckedIn = json['isCheckedIn'];
    isFeatured = json['isFeatured'];
    viewersCount = json['viewersCount'];
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
    tag = json['tag'] != null ? Tag.fromJson(json['tag']) : null;
    community = json['community'] != null
        ? Community.fromJson(json['community'])
        : null;
    isWaiting = json['isWaiting'];
    isJoined = json['isJoined'];
    joinedUsersCount = json['joinedUsersCount'];
    checkedInCount = json['checkedInCount'];
    paidAmount = json['paidAmount'];
    ownerEarnings = json['ownerEarnings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['spots'] = spots;
    data['price'] = price;
    data['lat'] = lat;
    data['lon'] = lon;
    data['placeName'] = placeName;
    data['featuredImage'] = featuredImage;
    data['deeplink'] = deeplink;
    data['date'] = date;
    data['tagId'] = tagId;
    data['createdBy'] = createdBy;
    data['communityId'] = communityId;
    data['whatsapp_link'] = whatsappLink;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['finish_date'] = finishDate;
    data['location_id'] = locationId;
    data['cancelled_at'] = cancelledAt;
    data['is_private'] = isPrivate;
    data['lockedAt'] = lockedAt;
    data['minimumMembers'] = minimumMembers;
    data['paymentMethod'] = paymentMethod;
    data['receiveUpdates'] = receiveUpdates;
    data['state'] = state;
    data['isCheckedIn'] = isCheckedIn;
    data['isFeatured'] = isFeatured;
    data['viewersCount'] = viewersCount;
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    if (tag != null) {
      data['tag'] = tag!.toJson();
    }
    if (community != null) {
      data['community'] = community!.toJson();
    }
    data['isWaiting'] = isWaiting;
    data['isJoined'] = isJoined;
    data['joinedUsersCount'] = joinedUsersCount;
    data['checkedInCount'] = checkedInCount;
    data['paidAmount'] = paidAmount;
    data['ownerEarnings'] = ownerEarnings;
    return data;
  }
}

class Images {
  String? url;

  Images({this.url});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? bio;
  String? profilePicture;
  int? points;
  String? mobile;
  String? countryCode;
  bool? isVerified;
  bool? isTrusted;

  Users(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.bio,
      this.profilePicture,
      this.points,
      this.mobile,
      this.countryCode,
      this.isVerified,
      this.isTrusted});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    bio = json['bio'];
    profilePicture = json['profile_picture'];
    points = json['points'];
    mobile = json['mobile'];
    countryCode = json['country_code'];
    isVerified = json['is_verified'];
    isTrusted = json['isTrusted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['bio'] = bio;
    data['profile_picture'] = profilePicture;
    data['points'] = points;
    data['mobile'] = mobile;
    data['country_code'] = countryCode;
    data['is_verified'] = isVerified;
    data['isTrusted'] = isTrusted;
    return data;
  }
}

class Tag {
  int? id;
  String? title;
  String? icon;

  Tag({this.id, this.title, this.icon});

  Tag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['icon'] = icon;
    return data;
  }
}

class Community {
  int? id;
  String? title;
  String? image;
  String? bio;
  int? points;
  int? ratingCount;
  int? connectionCount;
  int? eventCount;
  String? profilePicture;
  String? deeplink;
  String? linkExpiry;
  String? state;

  Community(
      {this.id,
      this.title,
      this.image,
      this.bio,
      this.points,
      this.ratingCount,
      this.connectionCount,
      this.eventCount,
      this.profilePicture,
      this.deeplink,
      this.linkExpiry,
      this.state});

  Community.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    bio = json['bio'];
    points = json['points'];
    ratingCount = json['rating_count'];
    connectionCount = json['connection_count'];
    eventCount = json['event_count'];
    profilePicture = json['profile_picture'];
    deeplink = json['deeplink'];
    linkExpiry = json['link_expiry'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['bio'] = bio;
    data['points'] = points;
    data['rating_count'] = ratingCount;
    data['connection_count'] = connectionCount;
    data['event_count'] = eventCount;
    data['profile_picture'] = profilePicture;
    data['deeplink'] = deeplink;
    data['link_expiry'] = linkExpiry;
    data['state'] = state;
    return data;
  }
}
