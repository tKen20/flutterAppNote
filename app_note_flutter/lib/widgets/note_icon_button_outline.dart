import 'package:app_note_flutter/core/constants.dart';
import 'package:flutter/material.dart';

class NoteIconButtonOutline extends StatelessWidget {
  const NoteIconButtonOutline(
      {super.key, required this.iconData, required this.onTab});

  final IconData iconData;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTab,
      icon: Icon(iconData),
      style: IconButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: black,
          ),
        ),
      ),
    );
  }
}
