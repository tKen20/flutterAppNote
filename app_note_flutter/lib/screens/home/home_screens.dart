import 'package:app_note_flutter/screens/home/cong_viec_screens.dart';
import 'package:app_note_flutter/screens/home/trang_chu_screens.dart';
import 'package:app_note_flutter/widgets/tab_bar_view_widget.dart';

import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return TabBarViewWidget();

    // drawer
  }
}
