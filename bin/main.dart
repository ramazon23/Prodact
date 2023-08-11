class Products {
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;
  Products({
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    required this.images,
  });

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
        title: map['title'] as String,
        description: map['description'] as String,
        price: map['price'] as int,
        discountPercentage: map['discountPercentage'] as double,
        rating: map['rating'] as double,
        stock: map['stock'] as int,
        brand: map['brand'] as String,
        category: map['category'] as String,
        thumbnail: map['thumbnail'] as String,
        images: List<String>.from(
          (map["images"].map((x) => x)),
        ));
  }

  @override
  String toString() {
    return '''Prodact(
      title: $title, 
      description: $description, 
      price: $price,
      discountPercentage: $discountPercentage, 
      rating: $rating, 
      stock: $stock, 
      brand: $brand, 
      category: $category,
      thumbnail: $thumbnail, 
      images: $images)''';
  }
}

class ProdactBig {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  ProdactBig({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory ProdactBig.fromMap(Map<String, dynamic> map) {
    return ProdactBig(
      products:
          (map['products'] as List).map((e) => Products.fromMap(e)).toList(),
      total: map['total'] as int,
      skip: map['skip'] as int,
      limit: map['limit'] as int,
    );
  }
}
