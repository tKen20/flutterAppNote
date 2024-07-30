import 'package:app_note_flutter/core/constants.dart';
import 'package:app_note_flutter/screens/home/new_or_edit_screens.dart';
import 'package:app_note_flutter/widgets/grid_view_note.dart';
import 'package:app_note_flutter/widgets/list_view_note.dart';
import 'package:app_note_flutter/widgets/note_fab.dart';
import 'package:flutter/material.dart';

class TrangChuScreens extends StatefulWidget {
  const TrangChuScreens({super.key});

  @override
  State<TrangChuScreens> createState() => _TrangChuScreensState();
}

class _TrangChuScreensState extends State<TrangChuScreens> {
  final List<String> dropDownOptions = [
    'Ngày Tạo',
    'Ngày Sửa Đổi',
  ];
  // lấy giá trị đầu tiên của dropDownOptions
  late String dropDownValue = dropDownOptions.first;

  //
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // hiện thị nút thêm note
      floatingActionButton: NoteFab(
        onTab: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NewOrEditScreens(),
          ));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // hiện thị dropdown buton
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                children: [
                  //icon down button

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_downward_outlined),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    constraints: const BoxConstraints(),
                    style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    color: gray700,
                  ),

                  //drop down
                  DropdownButton(
                    borderRadius: BorderRadius.circular(16),
                    isDense: true,
                    value: dropDownValue,
                    items: dropDownOptions
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    selectedItemBuilder: (context) => dropDownOptions
                        .map(
                          (e) => Text(e),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        dropDownValue = value!;
                      });
                    },
                  ),
                  const Spacer(),

                  // icon menu
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                    icon:
                        Icon(isGrid ? Icons.menu : Icons.backup_table_outlined),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    constraints: const BoxConstraints(),
                    style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    color: gray700,
                  ),
                ],
              ),
            ),

            //hiện thị các mục note dưới dạng gridview và list view
            Expanded(
              child: isGrid ? GridViewNote() : ListViewNote(),
            ),
          ],
        ),
      ),
    );
  }
}
