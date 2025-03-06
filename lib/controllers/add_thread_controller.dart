import 'package:get/get.dart';

class AddThreadController extends GetxController {
  var threadContent = "".obs;
  var canPost = false.obs;

  void postThread() {
    if (canPost.value) {
      // Simpan atau kirim data thread
      Get.snackbar("Success", "Thread posted successfully!");
      Get.back(); // Kembali ke halaman sebelumnya
    }
  }
}
