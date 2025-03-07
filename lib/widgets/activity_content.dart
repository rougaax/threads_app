import 'package:flutter/material.dart';
import 'thread_post_widget.dart';
import '../models/user_model.dart';

class AllActivityTab extends StatelessWidget {
  const AllActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          "Previous",
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
  FollowActivityTab({super.key});

  final List<Map<String, dynamic>> followers = [
    {'user': UserModel('foodie_lover', '', '', null, true), 'time': '2h'},
    {'user': UserModel('travel_junkie', '', '', null, true), 'time': '5h'},
    {'user': UserModel('artsy_gal', '', '', null, false), 'time': '1d'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: followers.length,
      itemBuilder: (context, index) {
        final user = followers[index]['user'] as UserModel;
        final time = followers[index]['time'] as String;

        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[350],
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 38,
            ),
          ),
          title: Row(
            children: [
              Text(
                user.username.value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          subtitle: Text(
            "Followed you",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  (index % 3 == 1)
                      ? Colors.grey[900]
                      : (index % 3 == 0)
                      ? Colors.grey[900]
                      : Colors.white,
              foregroundColor:
                  (index % 3 == 1 || index % 3 == 0)
                      ? Colors.white
                      : Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              (index % 3 == 0)
                  ? "Requested"
                  : (index % 3 == 1)
                  ? "Following"
                  : "Follow back",
            ),
          ),
        );
      },
    );
  }
}

class RepliesActivityTab extends StatelessWidget {
  const RepliesActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Nothing to see here yet',
        style: TextStyle(color: Colors.grey),
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
        'Nothing to see here yet',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class QuotesActivityTab extends StatelessWidget {
  const QuotesActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Nothing to see here yet',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class RepostActivityTab extends StatelessWidget {
  const RepostActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Nothing to see here yet',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class VerifiesActivityTab extends StatelessWidget {
  const VerifiesActivityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Nothing to see here yet',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
