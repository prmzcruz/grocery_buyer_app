class Product {
  final int id;
  final String name;
  final int categoryId;
  final String imageName;
  final String active;

  Product({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.imageName,
    required this.active,
  });

  // Factory method to create a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      imageName: json['image_name'],
      active: json['active'],
    );
  }

  // Method to convert a Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category_id': categoryId,
      'image_name': imageName,
      'active': active,
    };
  }
}
