import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildUserTile('kitsunee_', 'Kitsunee『キツネ』🦊', '141K followers', 'assets/search_assets/kitsunee.jpg'),
                _buildUserTile('433', '433', '10.1M followers', 'assets/search_assets/433.jpg'),
                _buildUserTile('update_anime', 'Update Anime Indonesia', '58.2K followers', 'assets/search_assets/update_anime.jpg'),
                _buildUserTile('marvelworld.in', 'Marvel World™', '402K followers', 'assets/search_assets/marvel.jpg'),
                _buildUserTile('punipun7', 'Clarissa Punipun, BSc (Hons), S.Kom.', '121K followers', 'assets/search_assets/punipun.jpg'),
                _buildUserTile('mpl.id.official', 'MPL Indonesia', '518K followers', 'assets/search_assets/mpl.jpg'),
                _buildUserTile('luthfihalimawan', '𝕷𝖚𝖙𝖍𝖋𝖎 𝕳𝖆𝖑𝖎𝖒𝖆𝖜𝖆𝖓', '90.3K followers', 'assets/search_assets/luthfi.jpg'),
                _buildUserTile('igndot.com', 'IGN', '931K followers', 'assets/search_assets/ign.jpg'),
                _buildUserTile('timnasindonesia', 'Timnas Indonesia', '593K followers', 'assets/search_assets/timnas.jpg'),
                _buildUserTile('robertdowneyjr', 'Robert Downey JR.', '8.5M followers', 'assets/search_assets/robert.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserTile(String username, String name, String followers, String? imagePath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: imagePath != null ? AssetImage(imagePath) : null,
        backgroundColor: Colors.grey[800],
        child: imagePath == null ? Icon(Icons.person, color: Colors.white) : null,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
      subtitle: Text(
        followers,
        style: TextStyle(color: Colors.grey),
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text('Follow'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SearchScreen(),
    theme: ThemeData.dark(),
  ));
}
