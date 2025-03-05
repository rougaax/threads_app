import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/tab_item_widget.dart';
import '../widgets/tabs/for_you_tab.dart';
import '../widgets/tabs/following_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            pinned: false,
            floating: true,
            expandedHeight: 60,
            centerTitle: true,
            flexibleSpace: SafeArea(
              child: Center(
                child: SvgPicture.asset("assets/threads_logo.svg", height: 40),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverTabBarDelegate(
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TabItemWidget(
                            title: "For you",
                            index: 0,
                            selectedTab: _selectedTab,
                            isLeft: true,
                            onTap: (index) {
                              setState(() {
                                _selectedTab = index;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: TabItemWidget(
                            title: "Following",
                            index: 1,
                            selectedTab: _selectedTab,
                            isLeft: false,
                            onTap: (index) {
                              setState(() {
                                _selectedTab = index;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: _selectedTab == 0 ? Colors.white : Colors.transparent,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: _selectedTab == 1 ? Colors.white : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        body: _selectedTab == 0 ? const ForYouTab() : const FollowingTab(),
      ),
    );
  }
}
class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverTabBarDelegate({required this.child});

  @override
  double get minExtent => 55;
  @override
  double get maxExtent => 55;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minExtent, maxHeight: maxExtent),
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
