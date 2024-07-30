import 'package:flutter/material.dart';

// hiện thị nút thêm note
class NoteFab extends StatelessWidget {
  NoteFab({super.key, required this.onTab});

  VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: Colors.blue[300],
      onPressed: onTab,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}
