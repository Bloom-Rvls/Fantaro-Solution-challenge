class Article {
  String id;
  String imageUrl;
  String title;
  String danger;
  final String solutionTitle = "Conseils bien être et\ou Solutions";
  String solutions;

  Article({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.danger,
    required this.solutions
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
      danger: json['danger'] as String,
      solutions: json['solutions'] as String
    );
  }
}
