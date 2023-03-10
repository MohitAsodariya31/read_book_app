import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/reading_edit_screen.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/mask0.png",
        "data2": "Mary Alice Monroe-the beach\nhouse",
        "data3": "By Mary Alice ",
        "data4": "assets/images/5star.png",
        "data5": "2.3k",
        "data6": "assets/images/hartimage.png",
        "data7": "assets/images/comment.png",
        "data8": "265",
      },
      {
        "data1": "assets/images/mask1.png",
        "data2": "The Life-Changing Magic of\nTidying Up",
        "data3": "By Marie Kondō ",
        "data4": "assets/images/4star.png",
        "data5": "4.2k",
        "data6": "assets/images/hartimage.png",
        "data7": "assets/images/comment.png",
        "data8": "458",
      },
      {
        "data1": "assets/images/mask2.png",
        "data2": "Sold on a Monday: A Novel",
        "data3": "By Kristina McMorris ",
        "data4": "assets/images/4star.png",
        "data5": "3.8k",
        "data6": "assets/images/hartimage.png",
        "data7": "assets/images/comment.png",
        "data8": "178",
      },
      {
        "data1": "assets/images/mask7.png",
        "data2": "Contagious: Why Things\nCatch On",
        "data3": "By Kristina McMorris ",
        "data4": "assets/images/4star.png",
        "data5": "738",
        "data6": "assets/images/hartimage.png",
        "data7": "assets/images/comment.png",
        "data8": "25",
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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Reading",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadingEditScreen(),
                ),
              );
            },
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Color(0xFF2EBBC3),
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(15),
                  height: height / 6,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        data["data"][index]["data1"],
                        height: height / 5,
                        fit: BoxFit.fitHeight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["data"][index]["data2"],
                              style: TextStyle(
                                fontSize: text * 18,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: height / 90,
                            ),
                            Text(
                              data["data"][index]["data3"],
                              style: const TextStyle(color: Color(0xFF8E8E93)),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Image.asset(
                                  data["data"][index]["data6"],
                                ),
                                SizedBox(width: width / 50),
                                Text(
                                  data["data"][index]["data5"],
                                  style: const TextStyle(color: Color(0xFFC7C7CC)),
                                ),
                                SizedBox(width: width / 8),
                                Image.asset(
                                  data["data"][index]["data7"],
                                ),
                                SizedBox(width: width / 50),
                                Text(
                                  data["data"][index]["data8"],
                                  style: const TextStyle(color: Color(0xFFC7C7CC)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(
                  endIndent: 20,
                  indent: 20,
                ),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
