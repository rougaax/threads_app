import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_thread_controller.dart';
import '../widgets/user_post_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddThreadScreen extends StatelessWidget {
  const AddThreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AddThreadController controller = Get.put(AddThreadController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: controller.goBack,
        ),
        title: const Text('New thread'),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/draft.svg", height: 32),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/dot.svg", height: 32),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              UserPostWidget(
                username: "loreen_ipsum",
                placeholder: "What's new?",
                profileImageUrl:
                    "https://images.unsplash.com/photo-1690790412691-aa9714b39cbb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      color:
                          controller.canPost.value
                              ? Colors.blue
                              : const Color.fromARGB(255, 70, 70, 70),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed:
                          controller.canPost.value
                              ? controller.postThread
                              : null,
                      child: Text(
                        'Post',
                        style: TextStyle(
                          color:
                              controller.canPost.value
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
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
