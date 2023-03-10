import 'package:flutter/material.dart';

class CoupenExpaired extends StatefulWidget {
  const CoupenExpaired({Key? key}) : super(key: key);

  @override
  State<CoupenExpaired> createState() => _CoupenExpairedState();
}

class _CoupenExpairedState extends State<CoupenExpaired> {
  Map student = {
    "data3": [
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
        "data4": "30%",
        "data5": "Discount",
        "data6": "assets/images/Invalid.png",
      },
      {
        "data1": "New Book",
        "data2": "30% discount on new books",
        "data3": "Vailid until: 2019-05-04",
        "data4": "20%",
        "data5": "Discount",
        "data6": "assets/images/Invalid.png",
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
                          width: width / 3,
                        ),
                        Text(
                          "Coupen",
                          style: TextStyle(
                            fontSize: 18,
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
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Color(0xff2EBBC3),
                        )),
                    child: TabBar(
                      indicator: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(5)),
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
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: student["data3"].length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(15),
                        height: height / 8,
                        width: width / 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffC9C9C9),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: height / 8,
                              width: width / 3,
                              color: Color(0xffC9C9C9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(student["data3"][index]["data4"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: text * 30)),
                                  Text(student["data3"][index]["data5"],
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    student["data3"][index]["data1"],
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    student["data3"][index]["data2"],
                                    style: TextStyle(
                                        color: Color(0xff8E8E93),
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
                                  student["data3"][index]["data6"],
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
