import 'package:get/get.dart';

class UserModel {
  final RxString username = ''.obs;
  final RxString name = ''.obs;
  final RxString followers = ''.obs;
  final Rx<String?> imagePath = Rx<String?>(null);
  final RxBool verified = false.obs;

  UserModel(
    String username,
    String name,
    String followers,
    String? imagePath,
    bool verified,
  ) {
    this.username.value = username;
    this.name.value = name;
    this.followers.value = followers;
    this.imagePath.value = imagePath;
    this.verified.value = verified;
  }
}
