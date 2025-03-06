import 'package:get/get.dart';
import '../models/user_model.dart';

class AppSearchController  extends GetxController {
  var searchQuery = ''.obs;
  
  var users = <UserModel>[
    UserModel('kitsunee_', 'Kitsunee『キツネ』🦊', '141K followers', 'assets/search_assets/kitsunee.jpg'),
    UserModel('433', '433', '10.1M followers', 'assets/search_assets/433.jpg'),
    UserModel('update_anime', 'Update Anime Indonesia', '58.2K followers', 'assets/search_assets/update_anime.jpg'),
    UserModel('marvelworld.in', 'Marvel World™', '402K followers', 'assets/search_assets/marvel.jpg'),
    UserModel('punipun7', 'Clarissa Punipun, BSc (Hons), S.Kom.', '121K followers', 'assets/search_assets/punipun.jpg'),
    UserModel('mpl.id.official', 'MPL Indonesia', '518K followers', 'assets/search_assets/mpl.jpg'),
    UserModel('luthfihalimawan', '𝕷𝖚𝖙𝖍𝖋𝖎 𝕳𝖆𝖑𝖎𝖒𝖆𝖜𝖆𝖓', '90.3K followers', 'assets/search_assets/luthfi.jpg'),
    UserModel('igndot.com', 'IGN', '931K followers', 'assets/search_assets/ign.jpg'),
    UserModel('timnasindonesia', 'Timnas Indonesia', '593K followers', 'assets/search_assets/timnas.jpg'),
    UserModel('robertdowneyjr', 'Robert Downey JR.', '8.5M followers', 'assets/search_assets/robert.jpg'),
  ].obs;

  List<UserModel> get filteredUsers {
    if (searchQuery.value.isEmpty) {
      return users;
    } else {
      return users.where((user) => user.username.toLowerCase().contains(searchQuery.value.toLowerCase())).toList();
    }
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }
}
