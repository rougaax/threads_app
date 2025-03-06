import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profile_controller.dart';

class ProfileTabBar extends StatelessWidget {
  final List<String> tabs = ["Utas", "Balasan", "Media", "Postingan\nulang"];
  final ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Row(
              children: List.generate(tabs.length, (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () => controller.changeTab(index),
                    child: Obx(() => Column(
                          children: [
                            Text(
                              tabs[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: controller.selectedTab.value == index
                                    ? Colors.white
                                    : Colors.grey,
                                fontSize: 16,
                                fontWeight:
                                    controller.selectedTab.value == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                              ),
                            ),
                            const SizedBox(height: 4),
                          ],
                        )),
                  ),
                );
              }),
            ),
            Container(height: 1, color: Colors.grey[800]), // Garis pemisah
          ],
        ),

        // Garis putih aktif (bertumpuk dengan garis abu-abu)
        Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: MediaQuery.of(context).size.width /
                  tabs.length *
                  controller.selectedTab.value,
              width: MediaQuery.of(context).size.width / tabs.length,
              bottom: 0,
              child: Container(height: 3, color: Colors.white),
            )),
      ],
    );
  }
}
