class Book {
  final String title;
  final String author;
  final String img;
  final double rating;
  final String category;

  Book({
    required this.title,
    required this.author,
    required this.img,
    required this.rating,
    required this.category,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      author: json['Author'],
      img: json['img'],
      rating: json['rating'].toDouble(),
      category: json['category'],
    );
  }
}