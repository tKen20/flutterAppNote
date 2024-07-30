import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // title Drawer
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "App Note",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.blue),
                ),
                //image
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),

          // body Drawer
          ListTile(
            leading: const Icon(CupertinoIcons.book),
            title: const Text(
              "Tất cả ghi chú",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.calendar),
            title: const Text(
              "Lịch",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.clock),
            title: const Text(
              "Nhắc nhở",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.sim_card_download_outlined),
            title: const Text(
              "Lưu trữ",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.trash),
            title: const Text(
              "Nhắc nhở",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text(
              "Yêu thích",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.bookmark),
            title: const Text(
              "Thể loại",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.tags),
            title: const Text(
              "Thẻ",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.microwave_rounded),
            title: const Text(
              "Widget",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.sync_sharp),
            title: const Text(
              "Đồng bọ hóa & sao lưu",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Cài đặt",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
