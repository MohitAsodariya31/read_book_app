import 'package:flutter/material.dart';
import 'package:read_book_app/common/button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/notificationicon.png",
        "data2": "assets/images/three.png",
        "data3": "System notification",
        "data4": "Tienes un adudo pendiente por ...",
        "data5": "2019-03-24",
      },
      {
        "data1": "assets/images/likeicon.png",
        "data2": "assets/images/nine.png",
        "data3": "Like",
        "data4": "Thomas Pageot like your comment",
        "data5": "2019-02-05",
      },
      {
        "data1": "assets/images/commenticon.png",
        "data2": "assets/images/seven.png",
        "data3": "Comment",
        "data4": "Oleg Milshtein replied your comment",
        "data5": "O2019-04-18",
      },
      {
        "data1": "assets/images/dollaricon.png",
        "data2": "assets/images/seven.png",
        "data3": "Promotions",
        "data4": "Oleg Milshtein Replied your comment",
        "data5": "2018-10-25",
      },
      {
        "data1": "assets/images/dollaricon.png",
        "data2": "assets/images/eight.png",
        "data3": "Followers",
        "data4": "Dann Petty start follow you",
        "data5": "2018-09-28",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Center(
            child: Text(
              "Edit",
              style: TextStyle(color: const Color(0Xff2EBBC3), fontSize: text * 20),
            ),
          ),
          SizedBox(
            width: width / 25,
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: data["data"].length,
          itemBuilder: (context, index) => ListTile(
            leading: Image.asset(
              data["data"][index]["data1"],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 90,
                ),
                Text(
                  data["data"][index]["data3"],
                ),
                SizedBox(
                  height: height / 90,
                ),
                Text(
                  data["data"][index]["data4"],
                  style: const TextStyle(color: Color(0xFF8E8E93)),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text(
                  data["data"][index]["data5"],
                  style: const TextStyle(color: Color(0xFFC7C7CC)),
                ),
              ],
            ),
            trailing: index == 3
                ? Text("")
                : Image.asset(
                    data["data"][index]["data2"],
                  ),
          ),
          separatorBuilder: (context, index) => Divider(
            endIndent: 30,
            indent: 70,
          ),
        ),
      ),
    );
  }
}
