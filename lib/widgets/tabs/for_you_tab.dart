import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/thread_controller.dart';
import '../thread_post_widget.dart';
import '../user_post_widget.dart';

class ForYouTab extends StatelessWidget {
  ForYouTab({super.key});

  final ThreadController threadController = Get.put(ThreadController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
        children: [
          UserPostWidget(
            username: "alvianrfs",
            placeholder: "What's new?",
            profileImageUrl:
                "https://images.unsplash.com/photo-1690790412691-aa9714b39cbb?q=80&w=1974",
            icons: const [
              "assets/attach.svg",
              "assets/camera.svg",
              "assets/gif.svg",
              "assets/mic.svg",
              "assets/hashtag.svg",
              "assets/add_poll.svg",
              "assets/location.svg",
            ],
          ),
          ...threadController.forYouThreads.map((thread) {
            return ThreadPostWidget(
              username: thread.username,
              time: thread.time,
              content: thread.content,
              likes: thread.likes,
              comments: thread.comments,
              hasImage: thread.hasImage,
              imageUrl: thread.imageUrl,
              profileImageUrl: thread.profileImageUrl,
            );
          }).toList(),
        ],
      ),
    );
  }
}
