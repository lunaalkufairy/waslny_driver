class Car {
  final int id;
  final String name;

  Car({required this.id, required this.name});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json["id"],
      name: json["name"],
    );
  }
}
