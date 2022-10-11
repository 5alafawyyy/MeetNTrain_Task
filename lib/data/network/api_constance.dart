class ApiConstance {
  static const String userId = '8357';
  static const String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgzNTcsImlzQWRtaW4iOmZhbHNlLCJpYXQiOjE2NjQ5NzU4OTN9.1msUlsgpO4dRbj55VhJsX0eyNDcLjsCiRfj26Z54zGE';
  static const String baseUrl =
      'http://test.meetntrain.com/v1/profile/events/upcoming/$userId/?page=1';

//https://ik.imagekit.io/tnc8pizf9e/${imageKey}?tr=w-${width},h-${height}
  static const String baseImageUrl = 'https://ik.imagekit.io/tnc8pizf9e';

  static String imageUrl({
    required String imageKey,
    required double width,
    required double height,
  }) =>
      '$baseImageUrl/$imageKey?tr=w-$width,h-$height';

  //Dio Headers
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json;charset=UTF-8';
  static const String accept = 'Accept';
  static const String authorization = 'Authorization';
}
