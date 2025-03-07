import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search_controller.dart';
import '../widgets/search_bar.dart';
import '../widgets/user_tile.dart';

class SearchScreen extends StatelessWidget {
  final AppSearchController controller = Get.put(AppSearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.black,
                title: const Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                ),
                floating: true,
                snap: true,
                pinned: true,
                elevation: 0,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(72.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 8.0,
                    ),
                    child: SearchBarWidget(),
                  ),
                ),
              ),
            ],
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Obx(
              () => ListView.builder(
                itemCount: controller.filteredUsers.length,
                itemBuilder: (context, index) {
                  return UserTile(user: controller.filteredUsers[index]);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
