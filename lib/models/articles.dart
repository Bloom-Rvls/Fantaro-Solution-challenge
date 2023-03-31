
class Article {
  String id;
  String imageUrl;
  String title;
  String details;

  Article({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.details,
  });

  static String slice(String data) {
    String dataSliced = '${data.substring(0, 100)}...';

    return dataSliced;
  }

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      details: json['details'] as String,
    );
  }
}
