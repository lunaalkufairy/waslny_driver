class CarModel {
  final int id;
  final String name;
  final int modelYear;

  CarModel({
    required this.id,
    required this.name,
    required this.modelYear,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      id: json["id"],
      name: json["name"],
      modelYear: json["model_year"],
    );
  }
}
