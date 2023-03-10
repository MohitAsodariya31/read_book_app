import 'package:flutter/material.dart';

import '../common/button.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/orpathentrain.png",
        "data2": "Orphan Train Trials",
        "data4": "/-＄7.50",
        "data3": "By Rachel Wesson ",
        "data9": false,
      },
      {
        "data1": "assets/images/Daughters of War.png",
        "data2": "Daughters of War",
        "data4": "/-＄6.00",
        "data3": "By Lizzie Page ",
        "data9": false,
      },
      {
        "data1": "assets/images/amotherlike.png",
        "data2": "A Mother Like Mine ",
        "data4": "/-＄5.50",
        "data3": "By Kate Hewitt ",
        "data9": false,
      },
      {
        "data1": "assets/images/marrychampis.png",
        "data2": "A Family Affair",
        "data4": "＄4.00",
        "data3": "By Mary Campisi ",
        "data9": false,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.blue;
    }

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
          "My Cart",
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
                itemCount: data["data"].length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(15),
                  height: height / 6,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xFF8E8E93),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      // Checkbox(
                      //   checkColor: const Color(0xFFFFFFFF),
                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      //   fillColor: MaterialStateProperty.resolveWith(
                      //     (states) => getColor(states),
                      //   ),
                      //   value: data["data"][index]["data9"],
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       data["data"][index]["data9"] = value!;
                      //     });
                      //   },
                      // ),
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
                            SizedBox(
                              height: height / 40,
                            ),
                            Text(
                              data["data"][index]["data4"],
                              style: const TextStyle(color: Color(0xFF2EBBC3)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Button(
                text: "Checkout",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
