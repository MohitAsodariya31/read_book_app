import 'package:flutter/material.dart';

class CoupenUnused extends StatefulWidget {
  const CoupenUnused({Key? key}) : super(key: key);

  @override
  State<CoupenUnused> createState() => _CoupenUnusedState();
}

class _CoupenUnusedState extends State<CoupenUnused> {
  List data = [
    "30%",
    "20%",
    "35%",
    "45%",
    "20%",
  ];
  List data2 = ["Discount", "Discount", "Discount", "Discount", "Discount"];
  List data3 = [
    "assets/images/New.png",
    "assets/images/New.png",
    "assets/images/New.png",
    "assets/images/New.png",
    "assets/images/New.png",
  ];

  Map student = {
    "data3": [
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
      },
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
      },
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
      },
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
      },
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: width / 20, right: width / 22),
            child: Container(
              height: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height / 25),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 35, right: width / 30),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/back.png",
                        ),
                        SizedBox(
                          width: width / 5,
                        ),
                        const Text(
                          "Coupen",
                          style: TextStyle(
                            fontSize: 17,
                            // fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  Container(
                    height: height / 25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: const Color(0xff2EBBC3),
                        )),
                    child: const TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff2EBBC3),
                      ),
                      tabs: [
                        Tab(
                          text: "Unused",
                        ),
                        Tab(
                          text: "used",
                        ),
                        Tab(
                          text: "Expaired",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.all(15),
                        height: height / 8,
                        width: width / 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff2EBBC3),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: height / 8,
                              width: width / 3,
                              color: const Color(0xff2EBBC3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${data[index]}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: text * 30)),
                                  Text("${data2[index]}",
                                      style: const TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    student["data3"][index]["data1"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    student["data3"][index]["data2"],
                                    style: TextStyle(
                                        color: const Color(0xff8E8E93),
                                        fontSize: text * 12),
                                  ),
                                  Text(
                                    student["data3"][index]["data3"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: text * 11),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "${data3[index]}",
                                  scale: 1.1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
