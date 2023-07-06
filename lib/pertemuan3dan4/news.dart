class News {
  final String judul;
  final String content;
  final String image;

  News({
    required this.judul,
    required this.content,
    required this.image,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
        judul: json['title'],
        content: json['contentSnippet'],
        image: json['image']);
  }
}
