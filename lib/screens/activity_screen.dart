import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/activity_controller.dart';
import '../widgets/tabs/activity_tab.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActivityController>(
      init: ActivityController(), // Inisialisasi Controller
      builder: (controller) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Activity'),
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
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Container(
                    height: 40, // Tinggi tab bar
                    child: TabBar(
                      indicator: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 26, 26, 26), // Warna latar belakang untuk tab aktif
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(255, 43, 43, 43),
                          width: 1.5,
                        ), // Border untuk tab aktif
                      ),
                      labelColor: Colors.white, // Warna teks tab aktif
                      unselectedLabelColor:
                          Colors.white, // Warna teks tab tidak aktif
                      indicatorSize: TabBarIndicatorSize.tab,
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ), // Hilangkan efek klik
                      dividerColor:
                          Colors.transparent, // Hilangkan garis bawah tab
                      tabs: const [
                        Tab(text: "Semua"),
                        Tab(text: "Mengikuti"),
                        Tab(text: "Balasan"),
                        Tab(text: "Penyebutan"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: ActivityTabs(),
          ),
        );
      },
    );
  }
}
