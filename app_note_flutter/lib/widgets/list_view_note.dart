import 'package:app_note_flutter/widgets/note_card.dart';
import 'package:flutter/material.dart';

// hiện thị dang listView
class ListViewNote extends StatefulWidget {
  const ListViewNote({super.key});

  @override
  State<ListViewNote> createState() => _ListViewNoteState();
}

class _ListViewNoteState extends State<ListViewNote> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      clipBehavior: Clip.none,
      itemCount: 6,
      itemBuilder: (context, index) {
        return NoteCard(
          isInGrid: false,
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 8,
      ),
    );
  }
}
