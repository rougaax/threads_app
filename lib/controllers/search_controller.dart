import 'package:get/get.dart';
import '../models/user_model.dart';

class AppSearchController extends GetxController {
  final searchQuery = ''.obs;
  final users = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeUsers();
  }

  void initializeUsers() {
    users.assignAll([
      UserModel(
        'kitsunee_',
        'Kitsunee『キツネ』🦊',
        '141K followers',
        'assets/search_assets/kitsunee.jpg',
        true,
      ),
      UserModel(
        '433',
        '433',
        '10.1M followers',
        'assets/search_assets/433.jpg',
        true,
      ),
      UserModel(
        'update.anime',
        'Update Anime Indonesia',
        '58.2K followers',
        'assets/search_assets/update_anime.jpg',
        false,
      ),
      UserModel(
        'marvelworld.in',
        'Marvel World™',
        '402K followers',
        'assets/search_assets/marvel.jpg',
        false,
      ),
      UserModel(
        'punipun7',
        'Clarissa Punipun, BSc (Hons), S.Kom.',
        '121K followers',
        'assets/search_assets/punipun.jpg',
        true,
      ),
      UserModel(
        'mpl.id.official',
        'MPL Indonesia',
        '518K followers',
        'assets/search_assets/mpl.jpg',
        true,
      ),
      UserModel(
        'luthfihalimawan',
        '𝕷𝖚𝖙𝖍𝖋𝖎 𝕳𝖆𝖑𝖎𝖒𝖆𝖜𝖆𝖓',
        '90.3K followers',
        'assets/search_assets/luthfi.jpg',
        true,
      ),
      UserModel(
        'igndotcom',
        'IGN',
        '931K followers',
        'assets/search_assets/ign.jpg',
        true,
      ),
      UserModel(
        'timnasindonesia',
        'Timnas Indonesia',
        '593K followers',
        'assets/search_assets/timnas.jpg',
        true,
      ),
      UserModel(
        'robertdowneyjr',
        'Robert Downey JR.',
        '8.5M followers',
        'assets/search_assets/robert.jpg',
        true,
      ),
    ]);
  }

  List<UserModel> get filteredUsers =>
      users
          .where(
            (user) =>
                searchQuery.value.isEmpty ||
                user.username.value.toLowerCase().contains(
                  searchQuery.value.toLowerCase(),
                ),
          )
          .toList();

  void updateSearchQuery(String query) => searchQuery.value = query;
}
