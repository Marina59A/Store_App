class ProductModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.FromJson(JsonData) {
    return ProductModel(
        id: JsonData['id'],
        title: JsonData['title'],
        price: JsonData['price'],
        description: JsonData['description'],
        image: JsonData['image'],
        rating: RatingModel.FromJson(JsonData['rating']));
  }

  get category => null;
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.FromJson(JsonData) {
    return RatingModel(rate: JsonData['rate'], count: JsonData['count']);
  }
}
