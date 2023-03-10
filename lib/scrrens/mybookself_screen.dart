import 'package:flutter/material.dart';

class MyBookSelfScreen extends StatefulWidget {
  const MyBookSelfScreen({Key? key}) : super(key: key);

  @override
  State<MyBookSelfScreen> createState() => _MyBookSelfScreenState();
}

class _MyBookSelfScreenState extends State<MyBookSelfScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/theorphan.png",
        "data2": "The Orphan...",
        "data3": "Shirley Dickson",
      },
      {
        "data1": "assets/images/mask4.png",
        "data2": "Daughters...",
        "data3": "Lizzie Page ",
      },
      {
        "data1": "assets/images/mask5.png",
        "data2": "The Runaw...",
        "data3": "Sandy Taylor",
      },
      {
        "data1": "assets/images/germanmid.png",
        "data2": "The Germa...",
        "data3": "Mandy Robot",
      },
      {
        "data1": "assets/images/nockedup.png",
        "data2": "nocked-Up...",
        "data3": "Hammerle",
      },
      {
        "data1": "assets/images/gardeners.png",
        "data2": "We Are the...",
        "data3": "Joanna Gaines",
      },
      {
        "data1": "assets/images/maybeyou.png",
        "data2": "Maybe You...",
        "data3": "Lori Gottlieb",
      },
      {
        "data1": "assets/images/soortestway.png",
        "data2": "Shortest W...",
        "data3": "Pete Buttigieg",
      },
      {
        "data1": "assets/images/fivefit.png",
        "data2": "Five Feet...",
        "data3": "Lippincott",
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
        actions: [Image.asset("assets/images/Show-List.png")],
        centerTitle: true,
        title: const Text(
          "Bookshelf",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width / 20),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 0.68,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: data["data"].length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(data["data"][index]["data1"]),
                        Text(data["data"][index]["data2"]),
                        Text(
                          data["data"][index]["data3"],
                          style: TextStyle(color: Colors.grey, fontSize: text * 12),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
