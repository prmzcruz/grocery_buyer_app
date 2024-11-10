
class Category {
  final int id;
  final String name;
  final String active;
  final String createdAt;

  Category({
    required this.id,
    required this.name,
    required this.active,
    required this.createdAt,
  });

  // Factory constructor to create an instance from JSON
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      active: json['active'],
      createdAt: json['created_at'],
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'active': active,
      'created_at': createdAt,
    };
  }
}


