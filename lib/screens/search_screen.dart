import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search_controller.dart';
import '../widgets/search_bar.dart';
import '../widgets/user_tile.dart';

class SearchScreen extends StatelessWidget {
  final AppSearchController  controller = Get.put(AppSearchController ());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SearchBarWidget(), // 🔹 Search Bar
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.filteredUsers.length,
                itemBuilder: (context, index) {
                  return UserTile(user: controller.filteredUsers[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
