import 'package:flutter/material.dart';

class UserPostWidget extends StatelessWidget {
  final String username;
  final String placeholder;
  final List<IconData> icons;
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
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[350],
            backgroundImage: profileImageUrl != null
                ? NetworkImage(profileImageUrl!)
                : null,
            child: profileImageUrl == null
                ? Icon(Icons.person, color: Colors.white, size: 30)
                : null,
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
                    children: icons
                        .map(
                          (icon) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          icon,
                          color: Colors.grey[600],
                          size: 24,
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
