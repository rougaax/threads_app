import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'thread_post_widget.dart';

class AllActivityTab extends StatelessWidget {
  AllActivityTab({super.key});

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
        ThreadPostWidget(
          username: "food_lover",
          time: "10h",
          content: "Just tried this amazing new recipe! 🍲",
          likes: 0,
          comments: 30,
          hasImage: false,
        ),
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
  FollowActivityTab({super.key}); // Bisa tetap 'const' sekarang

  // Dummy data akun yang mengikuti kita
  final List<UserModel> followers = [
    UserModel('kitsunee_',
          'Kitsunee『キツネ』🦊',
          '141K followers', "assets/search_assets/kitsunee.jpg"),
    UserModel('kitsunee_',
          'Kitsunee『キツネ』🦊',
          '141K followers', "assets/search_assets/kitsunee.jpg"),
    UserModel('kitsunee_',
          'Kitsunee『キツネ』🦊',
          '141K followers', "assets/search_assets/kitsunee.jpg"),
    UserModel('kitsunee_',
          'Kitsunee『キツネ』🦊',
          '141K followers', null),
  ];

   @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: followers.length,
      itemBuilder: (context, index) {
        final user = followers[index];

        return ListTile(
          leading: CircleAvatar(
            backgroundImage: user.imagePath != null
                ? NetworkImage(user.imagePath!)
                : const AssetImage("assets/default_avatar.png") as ImageProvider,
          ),
          title: Text(
            user.username,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "Mengikuti Anda",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: (index % 2 == 0) ? Colors.grey[800] : Colors.white,
              foregroundColor: (index % 2 == 0) ? Colors.white : Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text((index % 2 == 0) ? "Diminta" : "Ikuti Balik"),
          ),
        );
      },
    );
  }
}


class RepliesActivityTab extends StatelessWidget {
  RepliesActivityTab({super.key});

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
  MentionsActivityTab({super.key});

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
