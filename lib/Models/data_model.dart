class DataModel {
  String name;
  String img;
  String description;
  String location;
  int stars;
  int price;
  int people;

  DataModel({
    required this.name,
    required this.img,
    required this.description,
    required this.stars,
    required this.location,
    required this.price,
    required this.people,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json['name'],
        img: json['img'],
        description: json['description'],
        stars: json['stars'],
        location: json['location'],
        price: json['price'],
        people: json['people']);
  }
}
