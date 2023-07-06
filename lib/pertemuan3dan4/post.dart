class Post {
  final String userImage;
  final String username;
  final String postImage;
  final String caption;

  Post(
      {required this.userImage,
      required this.username,
      required this.postImage,
      required this.caption});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userImage: json['userImage'],
        username: json['username'],
        postImage: json['postImage'],
        caption: json['caption']);
  }
}
