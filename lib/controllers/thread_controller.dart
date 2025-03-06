import 'package:get/get.dart';
import '../models/thread_model.dart';

class ThreadController extends GetxController {
  var threads = <ThreadModel>[].obs;
  var forYouThreads = <ThreadModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchThreads();
    fetchForYouThreads();
  }
  void fetchThreads() {
    threads.assignAll([
      ThreadModel(
        repostedBy: "dsone9311",
        originalPoster: "tgkalfaa",
        time: "02/18",
        username: "tgkalfaa",
        content: "Biasanya yang ga pacaran itu jodohnya spesial.",
        likes: 19,
        comments: 321,
        hasImage: false,
      ),
      ThreadModel(
        username: "real21crocodile",
        time: "4h",
        content: "Blessing in Disguise",
        likes: 0,
        comments: 19,
        hasImage: false,
      ),
      ThreadModel(
        repostedBy: "antonio_siregar",
        originalPoster: "kata_pendaki",
        time: "2h",
        username: "kata_pendaki",
        content: "Bromo Time!🔥",
        likes: 0,
        comments: 12,
        hasImage: true,
        imageUrl: "https://images.unsplash.com/photo-1588668214407-6ea9a6d8c272?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        profileImageUrl: "https://plus.unsplash.com/premium_photo-1683380297110-a8d0ab72f79e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2xsaW1iaW5nfGVufDB8fDB8fHww",
      ),
      ThreadModel(
        username: "travel_diary",
        time: "8h",
        content: "Exploring the beautiful landscapes of Indonesia. 🌄",
        likes: 20,
        comments: 15,
        hasImage: true,
        imageUrl: "https://plus.unsplash.com/premium_photo-1668883189361-9c754861dbd6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        profileImageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
    ]);
  }

  void fetchForYouThreads() {
    forYouThreads.assignAll([
      ThreadModel(
          username: "tech_guru",
          time: "3h",
          content: "Check out this awesome new gadget I just got! It's a game-changer. 💻",
          likes: 85,
          comments: 17,
          hasImage: true,
          profileImageUrl: "https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        ),
        ThreadModel(
          username: "fitness_freak",
          time: "5h",
          content: "Just finished an intense workout session. Feeling pumped! 💪 #FitnessGoals",
          likes: 120,
          comments: 0,
          hasImage: false,
          profileImageUrl: "https://images.unsplash.com/photo-1576678927484-cc907957088c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZpdG5lc3N8ZW58MHx8MHx8fDA%3D",
        ),
        ThreadModel(
          username: "travel_diary",
          time: "8h",
          content: "Exploring the beautiful landscapes of Indonesia. 🌄 This country is absolutely stunning!",
          likes: 0,
          comments: 45,
          hasImage: true,
          profileImageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          imageUrl: "https://plus.unsplash.com/premium_photo-1668883189361-9c754861dbd6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
        ThreadModel(
          username: "food_lover",
          time: "10h",
          content: "Just tried this amazing new recipe! 🍲",
          likes: 0,
          comments: 30,
          hasImage: false,
        ),
        ThreadModel(
          username: "dzakiindomie",
          time: "2/22",
          content: "makan indomie nih guys!",
          likes: 2003,
          comments: 112,
          hasImage: true,
          imageUrl: "https://images.unsplash.com/photo-1727819793522-6ea2e6690432?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kb21pZXxlbnwwfHwwfHx8MA%3D%3D",
          profileImageUrl: "https://plus.unsplash.com/premium_photo-1719297388945-76b5b5a42d43?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGR6YWtpfGVufDB8fDB8fHww",
        ),
    ]);
  }
}
