class RestaurantEntity {
  final int id;
  final String phoneNumber;
  final String address;
  final String restaurantType;
  final String restaurantName;
  final String? email;
  final String openAt;
  final String closeAt;

  RestaurantEntity({
    required this.id,
    required this.restaurantName,
    required this.phoneNumber,
    required this.address,
    required this.restaurantType,
    required this.email,
    required this.openAt,
    required this.closeAt,
  });
}
