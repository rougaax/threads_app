import 'package:flutter/material.dart';
import '../widgets/user_post_widget.dart';

class AddThreadScreen extends StatelessWidget {
  const AddThreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('New thread'),
        actions: [
          IconButton(
            icon: const Icon(Icons.drafts),
            onPressed: () {
              // Handle draft action
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              // Handle more options action
            },
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              UserPostWidget(
                username: "alvianrfs",
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
            ],
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              children: [
                Text(
                  'Anyone can reply & quote',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Post the thread
                    },
                    child: const Text(
                      'Post',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}