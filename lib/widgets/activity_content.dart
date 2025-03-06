import 'package:flutter/material.dart';
import 'thread_post_widget.dart';

class AllActivityTab extends StatelessWidget {
  const AllActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          "Sebelumnya",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(height: 10),
        ThreadPostWidget(
          username: "food_lover",
          time: "10h",
          content: "Just tried this amazing new recipe! 🍲",
          likes: 0,
          comments: 30,
          hasImage: false,
        ),
      ],
    );
  }
}

class FollowActivityTab extends StatelessWidget {
  const FollowActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Belum ada aktivitas yang Anda sukai",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class RepliesActivityTab extends StatelessWidget {
  const RepliesActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Anda belum membalas utas apa pun",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class MentionsActivityTab extends StatelessWidget {
  const MentionsActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Belum ada yang menyebut Anda",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
