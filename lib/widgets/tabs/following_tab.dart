import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/thread_controller.dart';
import '../thread_post_widget.dart';
import '../thread_repost_widget.dart';

class FollowingTab extends StatelessWidget {
  FollowingTab({super.key});

  final ThreadController threadController = Get.put(ThreadController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: threadController.threads.length,
        itemBuilder: (context, index) {
          final thread = threadController.threads[index];

          return thread.isRepost
              ? ThreadRepostWidget(
                  repostedBy: thread.repostedBy!,
                  originalPoster: thread.originalPoster!,
                  time: thread.time,
                  title: " ",
                  content: thread.content,
                  likes: thread.likes,
                  comments: thread.comments,
                  hasImage: thread.hasImage,
                  imageUrl: thread.imageUrl,
                  profileImageUrl: thread.profileImageUrl,
                )
              : ThreadPostWidget(
                  username: thread.username,
                  time: thread.time,
                  content: thread.content,
                  likes: thread.likes,
                  comments: thread.comments,
                  hasImage: thread.hasImage,
                  imageUrl: thread.imageUrl,
                  profileImageUrl: thread.profileImageUrl,
                );
        },
      ),
    );
  }
}
