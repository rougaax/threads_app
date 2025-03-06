class ThreadModel {
  final String username;
  final String time;
  final String content;
  final int likes;
  final int comments;
  final bool hasImage;
  final String? imageUrl;
  final String? profileImageUrl;
  final String? repostedBy;
  final String? originalPoster;

  ThreadModel({
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.comments,
    required this.hasImage,
    this.imageUrl,
    this.profileImageUrl,
    this.repostedBy,
    this.originalPoster,
  });

  bool get isRepost => repostedBy != null && originalPoster != null;
}
