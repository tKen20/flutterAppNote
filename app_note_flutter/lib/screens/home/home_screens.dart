import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "App Note",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 35,
              ))
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),

      //body

      // drawer
      drawer: Drawer(
        child: ListView(
          children: [
            // title Drawer
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
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
              leading: Icon(CupertinoIcons.book),
              title: Text(
                "Tất cả ghi chú",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(CupertinoIcons.calendar),
              title: Text(
                "Lịch",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(CupertinoIcons.clock),
              title: Text(
                "Nhắc nhở",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.sim_card_download_outlined),
              title: Text(
                "Lưu trữ",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(CupertinoIcons.trash),
              title: Text(
                "Nhắc nhở",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text(
                "Yêu thích",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(CupertinoIcons.bookmark),
              title: Text(
                "Thể loại",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(CupertinoIcons.tags),
              title: Text(
                "Thẻ",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.microwave_rounded),
              title: Text(
                "Widget",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.sync_sharp),
              title: Text(
                "Đồng bọ hóa & sao lưu",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Cài đặt",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
