import 'package:flutter/material.dart';
import '../activity_content.dart';

class ActivityTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        AllActivityTab(),
        FollowActivityTab(),
        RepliesActivityTab(),
        MentionsActivityTab(),
      ],
    );
  }
}
