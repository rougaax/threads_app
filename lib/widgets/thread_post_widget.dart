import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThreadPostWidget extends StatelessWidget {
  final String username;
  final String time;
  final String content;
  final int likes;
  final int comments;
  final bool hasImage;
  final bool showLikesCount;
  final String? imageUrl;
  final String? profileImageUrl;

  const ThreadPostWidget({
    super.key,
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.comments,
    required this.hasImage,
    this.showLikesCount = false,
    this.imageUrl,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfileAvatar(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: const TextStyle(color: Colors.white),
                ),
                if (hasImage && imageUrl != null) ...[
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imageUrl!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
                const SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                        "assets/heart.svg", color: Colors.grey[600],
                        height: 20),
                    const SizedBox(width: 4),
                    if (showLikesCount && likes > 0)
                      Text(
                        likes.toString(),
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                        "assets/message.svg", color: Colors.grey[600],
                        height: 20),
                    const SizedBox(width: 4),
                    if (comments > 0)
                      Text(
                        comments.toString(),
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                        "assets/repost.svg", color: Colors.grey[600],
                        height: 20),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                        "assets/send.svg", color: Colors.grey[600], height: 20),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.more_horiz, color: Colors.grey[600]),
        ],
      ),
    );
  }

  Widget _buildProfileAvatar() {
    if (profileImageUrl != null) {
      return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[800],
        backgroundImage: NetworkImage(profileImageUrl!),
      );
    } else {
      return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[350],
        child: ClipOval(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.90,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      );
    }
  }
}
