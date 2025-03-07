import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserPostWidget extends StatelessWidget {
  final String username;
  final String placeholder;
  final List<String> icons;
  final String? profileImageUrl;

  const UserPostWidget({
    super.key,
    required this.username,
    required this.placeholder,
    required this.icons,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[350],
                backgroundImage:
                    profileImageUrl != null
                        ? NetworkImage(profileImageUrl!)
                        : null,
                child:
                    profileImageUrl == null
                        ? Icon(Icons.person, color: Colors.white, size: 30)
                        : null,
              ),
              const SizedBox(width: 12),
              // Garis vertikal
              Container(
                width: 2,
                height: 20, // Sesuaikan tinggi garis
                color: const Color.fromARGB(
                  255,
                  50,
                  50,
                  50,
                ), // Warna agak gelap
                margin: const EdgeInsets.symmetric(vertical: 4),
              ),
              // Profil kecil & gelap
              Stack(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        profileImageUrl != null
                            ? NetworkImage(profileImageUrl!)
                            : null,
                  ),
                  Container(
                    width: 24, // Sesuaikan dengan ukuran avatar
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(
                        0.4,
                      ), // Overlay hitam transparan
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 2),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        icons
                            .map(
                              (iconPath) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: SvgPicture.asset(
                                  iconPath,
                                  height: 20,
                                  color: const Color.from(
                                    alpha: 1,
                                    red: 0.302,
                                    green: 0.302,
                                    blue: 0.302,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ), //color grey 600
          ),
        ],
      ),
    );
  }
}
