import 'package:get/get.dart';

class AddThreadController extends GetxController {
  final threadContent = "".obs;
  final canPost = false.obs;

  @override
  void onInit() {
    super.onInit();
    ever(threadContent, validatePost);
  }

  void validatePost(String content) {
    canPost.value = content.trim().isNotEmpty;
  }

  void goBack() => Get.back();

  void postThread() {
    if (canPost.value) {
      // Simpan atau kirim data thread
      Get.snackbar(
        "Success",
        "Thread posted successfully!",
        snackPosition: SnackPosition.TOP,
      );
      goBack();
    }
  }

  void updateContent(String content) => threadContent.value = content;
}
