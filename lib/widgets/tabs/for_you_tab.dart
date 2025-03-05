import 'package:flutter/material.dart';
import '../user_post_widget.dart';
import '../thread_post_widget.dart';

class ForYouTab extends StatelessWidget {
  const ForYouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserPostWidget(
          username: "lorem_ipsum",
          placeholder: "What's new?",
          profileImageUrl: "https://images.unsplash.com/photo-1690790412691-aa9714b39cbb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          icons: const [
            Icons.photo_library_outlined,
            Icons.photo_camera_outlined,
            Icons.gif_box_outlined,
            Icons.mic_none_outlined,
            Icons.tag_outlined,
            Icons.menu,
            Icons.location_on_outlined,
          ],
        ),
        ThreadPostWidget(
          username: "tech_guru",
          time: "3h",
          content: "Check out this awesome new gadget I just got! It's a game-changer. 💻",
          likes: 85,
          comments: 17,
          hasImage: true,
          profileImageUrl: "https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        ),
        ThreadPostWidget(
          username: "fitness_freak",
          time: "5h",
          content: "Just finished an intense workout session. Feeling pumped! 💪 #FitnessGoals",
          likes: 120,
          comments: 0,
          hasImage: false,
          profileImageUrl: "https://images.unsplash.com/photo-1576678927484-cc907957088c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZpdG5lc3N8ZW58MHx8MHx8fDA%3D",
        ),
        ThreadPostWidget(
          username: "travel_diary",
          time: "8h",
          content: "Exploring the beautiful landscapes of Indonesia. 🌄 This country is absolutely stunning!",
          likes: 0,
          comments: 45,
          hasImage: true,
          profileImageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          imageUrl: "https://plus.unsplash.com/premium_photo-1668883189361-9c754861dbd6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
          username: "dzakiindomie",
          time: "2/22",
          content: "makan indomie nih guys!",
          likes: 2003,
          comments: 112,
          hasImage: true,
          imageUrl: "https://images.unsplash.com/photo-1727819793522-6ea2e6690432?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kb21pZXxlbnwwfHwwfHx8MA%3D%3D",
          profileImageUrl: "https://plus.unsplash.com/premium_photo-1719297388945-76b5b5a42d43?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGR6YWtpfGVufDB8fDB8fHww",
        ),
      ],
    );
  }
}
