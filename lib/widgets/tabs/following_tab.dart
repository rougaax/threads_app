import 'package:flutter/material.dart';
import '../thread_post_widget.dart';
import '../thread_repost_widget.dart';

class FollowingTab extends StatelessWidget {
  const FollowingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ThreadRepostWidget(
          repostedBy: "dsone9311",
          originalPoster: "tgkalfaa",
          time: "02/18",
          title: " ",
          content: "Biasanya yang ga pacaran itu jodohnya spesial.",
          likes: 19,
          comments: 321,
          hasImage: false,
        ),
        ThreadPostWidget(
          username: "real21crocodile",
          time: "4h",
          content: "Blessing in Disguise",
          likes: 0,
          comments: 19,
          hasImage: false,
        ),
        ThreadRepostWidget(
          repostedBy: "antonio_siregar",
          originalPoster: "kata_pendaki",
          time: "2h",
          title: " ",
          content: "Bromo Time!🔥",
          likes: 0,
          comments: 12,
          hasImage: true,
          imageUrl: "https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          profileImageUrl: "https://plus.unsplash.com/premium_photo-1683380297110-a8d0ab72f79e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2xpbWJpbmd8ZW58MHx8MHx8fDA%3D",
        ),
        ThreadPostWidget(
          username: "travel_diary",
          time: "8h",
          content: "Exploring the beautiful landscapes of Indonesia. 🌄",
          likes: 20,
          comments: 15,
          hasImage: true,
          imageUrl: "https://plus.unsplash.com/premium_photo-1668883189361-9c754861dbd6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          profileImageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
        ThreadPostWidget(
          username: "greenapple",
          time: "30m",
          content: "Puasa hari pertama sukses!",
          likes: 0,
          comments: 51,
          hasImage: true,
          imageUrl: "https://images.unsplash.com/photo-1652064588708-2a3eefd68077?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
      ],
    );
  }
}
