import 'package:flutter/material.dart';

class ReadindRecordScreen extends StatefulWidget {
  const ReadindRecordScreen({Key? key}) : super(key: key);

  @override
  State<ReadindRecordScreen> createState() => _ReadindRecordScreenState();
}

class _ReadindRecordScreenState extends State<ReadindRecordScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/goodmanbookimage.png",
        "data2": "Good Man, Dalton",
        "data3": "By Karen McQuestion ",
        "data4": "assets/images/5star.png",
        "data5": "2019-05-06 23:05:12",
      },
      {
        "data1": "assets/images/myjobbookimage.png",
        "data2": "My Job: More People at Work\n Around the World",
        "data3": "By Suzanne Skees ",
        "data4": "assets/images/4star.png",
        "data5": "2019-04-16 13:29:35",
      },
      {
        "data1": "assets/images/motherlikemanbookimage.png",
        "data2": "A Mother Like Mine",
        "data3": "By Sandy Taylor ",
        "data4": "assets/images/4star.png",
        "data5": "2018-10-25 15:14:32",
      },
      {
        "data1": "assets/images/marrycopasybookimage.png",
        "data2": "A Family Affair: Truth in Lies",
        "data3": "By Suzanne Skees ",
        "data4": "assets/images/4star.png",
        "data5": "2019-05-06 13:29:35",
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
          "Reading Record ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
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
                            ),
                            SizedBox(
                              height: height / 90,
                            ),
                            Text(
                              data["data"][index]["data3"],
                              style: const TextStyle(color: Color(0xFF8E8E93)),
                            ),
                            SizedBox(
                              height: height / 90,
                            ),
                            Image.asset(
                              data["data"][index]["data4"],
                            ),
                            Spacer(),
                            Text(
                              data["data"][index]["data5"],
                              style: const TextStyle(color: Color(0xFFC7C7CC)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
