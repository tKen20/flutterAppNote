import 'package:app_note_flutter/screens/home/cong_viec_screens.dart';
import 'package:app_note_flutter/screens/home/home_screens.dart';
import 'package:app_note_flutter/screens/home/tat_ca_screens.dart';
import 'package:app_note_flutter/screens/home/trang_chu_screens.dart';
import 'package:app_note_flutter/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        // app bar
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text(
            "App Note",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 35,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 35,
                ))
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          bottom: TabBar(
            physics: ClampingScrollPhysics(),
            indicatorColor: Colors.blue,
            labelStyle: TextStyle(color: Colors.white, fontSize: 20),
            splashBorderRadius: BorderRadius.circular(20),
            // dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: "Trang chủ",
              ),
              Tab(
                text: "Tất cả",
              ),
              Tab(
                text: "Công việc",
              ),
            ],
          ),
        ),

        //body

        body: TabBarView(children: [
          TrangChuScreens(),
          TatCaScreens(),
          CongViecScreens(),
        ]),

        //dravwe
        drawer: const DrawerWidget(),
      ),
    );
  }
}
