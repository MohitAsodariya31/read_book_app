import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/search_screen.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({Key? key}) : super(key: key);

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/dannyrise.png",
        "data2": "Danny Rice",
        "data3": false,
      },
      {
        "data1": "assets/images/eachalann.png",
        "data2": "Rachel Ann",
        "data3": false,
      },
      {
        "data1": "assets/images/Betty Schwartz.png",
        "data2": "Betty Schwartz",
        "data3": false,
      },
      {
        "data1": "assets/images/Sean Potter.png",
        "data2": "Sean Potter",
        "data3": false,
      },
      {
        "data1": "assets/images/Eugenia.png",
        "data2": "Eugenia",
        "data3": false,
      },
      {
        "data1": "assets/images/Jeffrey.png",
        "data2": "Jeffrey",
        "data3": false,
      },
      {
        "data1": "assets/images/Jane Allen.png",
        "data2": "Jane Allen",
        "data3": false,
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
          "Followers",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),),);
              },
              child: SizedBox(
                height: height / 20,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    hintText: "search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // borderRadius: BorderRadius.circular(15),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    // contentPadding: const EdgeInsets.symmetric(vertical: 5),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: data["data"].length,
              itemBuilder: (context, index) => ListTile(
                leading: Image.asset(
                  data["data"][index]["data1"],
                ),
                title: Text(data["data"][index]["data2"]),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      data["data"][index]["data3"] =
                          !data["data"][index]["data3"];
                    });
                  },
                  child: Container(
                    height: height / 32,
                    width: width / 5.5,
                    decoration: BoxDecoration(
                      color: data["data"][index]["data3"]
                          ? Colors.grey.shade300
                          : const Color(0xFF2EBBC3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: data["data"][index]["data3"]
                          ? const Text(
                              "unfollow",
                              style: TextStyle(color: Colors.grey),
                            )
                          : const Text(
                              "folllow",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(height: height / 30),
            ),
          )
        ],
      ),
    );
  }
}
