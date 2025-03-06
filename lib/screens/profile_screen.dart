import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';
import '../widgets/profile_card_widget.dart';
import '../widgets/profile_info.dart';
import '../widgets/tabs/profile_tab.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.public, size: 32, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/insights.svg",
              height: 32,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/instagram.svg",
              height: 28,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/add_poll.svg",
              height: 32,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ProfileInfo(),
          ProfileTabBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Obx(
                () => IndexedStack(
                  index: controller.selectedTab.value,
                  children: [
                    Column(
                      children: [
                        _buildTabContent("Selesaikan profil Anda", "3 lagi"),
                        _buildProfileCards(), // ✅ ProfileCard muncul di sini
                      ],
                    ),
                    _buildTabMessage("Anda belum memposting balasan apa pun"),
                    _buildTabMessage(
                      "Anda belum memposting utas media apa pun",
                    ),
                    _buildTabMessage(
                      "Anda belum memposting ulang utas apa pun",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCards() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: ProfileCard(
              icon: "assets/message.svg",
              title: "Buat utas",
              subtitle:
                  "Sampaikan apa yang Anda pikirkan atau bagikan sorotan terbaru.",
              buttonText: "Buat",
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ProfileCard(
              icon: "assets/send.svg",
              title: "Ikuti 10 profil",
              subtitle: "Isi kabar Anda dengan utas yang Anda minati.",
              buttonText: "Lihat profil",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),        ],
      ),
    );
  }

  Widget _buildTabMessage(String message) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
