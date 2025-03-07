import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/activity_controller.dart';
import '../widgets/activity_content.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActivityController>(
      init: ActivityController(),
      builder: (controller) {
        return DefaultTabController(
          length: 7,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Activity'),
              backgroundColor: Colors.black,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 16, bottom: 8),
                  child: SizedBox(
                    height: 40,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(
                          color: const Color.fromARGB(255, 26, 26, 26),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromARGB(255, 43, 43, 43),
                            width: 1.5,
                          ),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(text: "All"),
                          Tab(text: "Follows"),
                          Tab(text: "Replies"),
                          Tab(text: "Mentions"),
                          Tab(text: "Quotes"),
                          Tab(text: "Repost"),
                          Tab(text: "Verifies"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                AllActivityTab(),
                FollowActivityTab(),
                RepliesActivityTab(),
                MentionsActivityTab(),
                QuotesActivityTab(),
                RepostActivityTab(),
                VerifiesActivityTab(),
              ],
            ),
          ),
        );
      },
    );
  }
}
