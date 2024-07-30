import 'package:app_note_flutter/core/constants.dart';
import 'package:flutter/material.dart';

// hiện thị nội dung của mỗi note
class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.isInGrid});

  final bool isInGrid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: primary, width: 2),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: primary.withOpacity(0.5),
              offset: const Offset(2, 2),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //tiêu đề của note
          const Text(
            "Đây là tiêu đề note app nay",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          // thẻ tag của note
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.only(
                    right: 4,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: gray100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "thẻ gắn",
                    style: TextStyle(
                      color: gray700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),

          if (isInGrid)
            const Expanded(
              child: Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  "Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung"),
            )
          else
            const Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                "Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung Nội Dung"),
          const Row(
            children: [Text("20/7/2024"), Spacer(), Icon(Icons.delete_outline)],
          ),
        ],
      ),
    );
  }
}
