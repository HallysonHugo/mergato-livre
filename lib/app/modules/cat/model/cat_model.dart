class CatModel {
  late final String id;
  late final String name;
  late final String description;
  late final String origin;
  late final String image;
  double price = 0.0;

  CatModel({
    required this.id,
    required this.name,
    required this.description,
    required this.origin,
    required this.image,
  });

  CatModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    origin = json['origin'];
    image = json['image']['url'];
  }
}
