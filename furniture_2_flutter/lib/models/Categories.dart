class Category {
  final int numOfProducts;
  final String id, title, image;

  Category({
    this.numOfProducts,
    this.id,
    this.title,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      numOfProducts: json['numOfProducts'],
    );
  }
}
