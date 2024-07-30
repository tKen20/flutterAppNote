import 'package:app_note_flutter/core/constants.dart';
import 'package:app_note_flutter/widgets/note_icon_button_outline.dart';
import 'package:flutter/material.dart';

class NewOrEditScreens extends StatefulWidget {
  const NewOrEditScreens({super.key});

  @override
  State<NewOrEditScreens> createState() => _NewOrEditScreensState();
}

class _NewOrEditScreensState extends State<NewOrEditScreens> {
  // late final QuillController quillController;

  // QuillController quillController = QuillController.basic();

  // @override
  // void initState() {
  //   super.initState();
  //   quillController = QuillController.basic();
  // }

  // @override
  // void dispose() {
  //   quillController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // hiện thị app bar
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoteIconButtonOutline(
                iconData: Icons.arrow_back,
                onTab: () {
                  Navigator.of(context).pop();
                })),
        title: const Text("New Note"),
        actions: [
          NoteIconButtonOutline(iconData: Icons.draw, onTab: () {}),
          NoteIconButtonOutline(iconData: Icons.check, onTab: () {}),
        ],
      ),

      // body hiện thị tiêu đề và nội dung
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            //tiêu đề
            TextField(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: "Tiêu Đề Nội Dung",
                hintStyle: TextStyle(
                  color: gray300,
                ),
                border: InputBorder.none,
              ),
            ),
            // ngày chỉnh sửa cuối
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Ngày sửa lần cuối",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: gray500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    "30/7/2024 3:40PM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // hiện thị ngày tạo
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Ngày tạo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: gray500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    "30/7/2024, 3:40PM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // hiện thẻ tag

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Thẻ tag",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: gray500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    "gà",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: gray500,
                thickness: 2,
              ),
            ),

            //hiện thị nội dung
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
