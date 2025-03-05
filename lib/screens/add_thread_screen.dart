import 'package:flutter/material.dart';

class AddThreadScreen extends StatelessWidget {
  const AddThreadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add')),
      body: const Center(child: Text('Feed Threads')),
    );
  }
}
