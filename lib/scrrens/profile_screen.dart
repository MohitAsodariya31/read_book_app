import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/edit_profile_svreen.dart';
import 'package:read_book_app/scrrens/home_screen.dart';
import 'package:read_book_app/scrrens/myaccount_screen.dart';
import 'package:read_book_app/scrrens/mybookself_screen.dart';
import 'package:read_book_app/scrrens/notification_screen.dart';
import 'package:read_book_app/scrrens/readingrecord_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map data = {
    "data": [
      {
        "data1": "Account",
        "data2": "Night Mood",
        "data3": "assets/images/accountimage.png",
        "data4": "assets/images/nighticon.png",
      },
      {
        "data1": "My Bookshelf",
        "data2": "History",
        "data3": "assets/images/bookshelfimage.png",
        "data4": "assets/images/historyicon.png",
      },
      {
        "data1": "Reading Record",
        "data2": "Setting",
        "data3": "assets/images/note.png",
        "data4": "assets/images/settingicon.png",
      },
      {
        "data1": "My Cart",
        "data2": "Healp and feelback",
        "data3": "assets/images/icon.png",
        "data4": "assets/images/helpicon.png",
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
        backgroundColor: const Color(0xFF2EBBC3),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                );
              },
              child: Image.asset("assets/images/icon-Notifications.png"),
            ),
          ),
          SizedBox(
            width: width / 25,
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height / 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: height / 5.5,
                    width: double.infinity,
                    color: const Color(0xFF2EBBC3),
                  ),
                  Positioned(
                    top: height / 10,
                    left: width / 12,
                    child: Container(
                      height: height / 4.5,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 12,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 10,
                              ),
                              Text(
                                "Limpitsouni",
                                style: TextStyle(
                                    color: Colors.black, fontSize: text * 25),
                              ),
                              SizedBox(
                                width: width / 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditProfileScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: height / 25,
                                  width: width / 4.5,
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF2EBBC3),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: const Color(0xFF2EBBC3)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(
                                          color: const Color(0xFF2EBBC3),
                                          fontSize: text * 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: Divider()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "135",
                                style: TextStyle(
                                    color: Colors.black, fontSize: text * 25),
                              ),
                              Text(
                                "209",
                                style: TextStyle(
                                    color: Colors.black, fontSize: text * 25),
                              ),
                              Text(
                                "26K",
                                style: TextStyle(
                                    color: Colors.black, fontSize: text * 25),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Comments",
                                style: TextStyle(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: text * 20,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: text * 20,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: const Color(0xFF8E8E93),
                                    fontSize: text * 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 6.5,
                    top: height / 20,
                    child: Image.asset("assets/images/Avatar.png"),
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data["data"].length,
                    itemBuilder: (context, index) => ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: ListTile(
                        leading: Image.asset(
                          data["data"][index]["data3"],
                        ),
                        title: Text(data["data"][index]["data1"]),
                        trailing: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyaccountScreen(),
                                ),
                              );
                            } else if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MyBookSelfScreen(),
                                ),
                              );
                            } else if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ReadindRecordScreen(),
                                ),
                              );
                            }
                          },
                          child: const Icon(Icons.navigate_next_outlined,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data["data"].length,
                    itemBuilder: (context, index) => ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: ListTile(
                        leading: Image.asset(
                          data["data"][index]["data4"],
                        ),
                        title: Text(data["data"][index]["data2"]),
                        trailing: const Icon(Icons.navigate_next),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomSheet(
        builder: (context) => Container(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Image.asset("assets/images/groud.png"),
              ),
              Image.asset("assets/images/path.png"),
              Image.asset("assets/images/category.png"),
              Image.asset("assets/images/Profiles.png"),
            ],
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
