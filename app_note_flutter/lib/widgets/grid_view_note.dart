import 'package:app_note_flutter/widgets/note_card.dart';
import 'package:flutter/material.dart';

// hiện thị dạng gridView
class GridViewNote extends StatelessWidget {
  const GridViewNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return NoteCard(
          isInGrid: true,
        );
      },
    );
  }
}
