import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'thread_post_widget.dart';

class ThreadRepostWidget extends StatelessWidget {
  final String repostedBy;
  final String originalPoster;
  final String time;
  final String title;
  final String content;
  final int likes;
  final int comments;
  final bool hasImage;
  final String? profileImageUrl;
  final String? imageUrl;

  const ThreadRepostWidget({
    super.key,
    required this.repostedBy,
    required this.originalPoster,
    required this.time,
    required this.title,
    required this.content,
    required this.likes,
    required this.comments,
    required this.hasImage,
    this.profileImageUrl,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/repost.svg",
                colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                height: 18,
              ),
              const SizedBox(width: 6),
              Text(
                "$repostedBy reposted",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 0),
        ThreadPostWidget(
          username: originalPoster,
          time: time,
          content: content,
          likes: likes,
          comments: comments,
          hasImage: hasImage,
          profileImageUrl: profileImageUrl,
          imageUrl: imageUrl,
        ),
      ],
    );
  }
}
