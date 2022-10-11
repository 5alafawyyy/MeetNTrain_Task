extension CapExtension on String {
  String get capitalizeFirstofEach => split(" ")
      .map((str) => str[0].toUpperCase() + str.substring(1).toLowerCase())
      .join(" ");
}
