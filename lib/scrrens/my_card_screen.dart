import 'package:flutter/material.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({Key? key}) : super(key: key);

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: width / 18, right: width / 20),
            child: Column(
              children: [
                SizedBox(height: height / 25),
                Padding(
                  padding:  EdgeInsets.only(left: width / 30, right: width / 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/back.png"),
                       const Text(
                        "My Card",
                        style: TextStyle(
                          fontSize: 17,
                          // fontFamily: 'Roboto',
                        ),
                      ),
                      Container(
                        height: height / 28,
                        width: width / 10,
                        decoration: BoxDecoration(
                        color: const Color(0xFF2EBBC3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(Icons.add,color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height/30),
                Image.asset("assets/images/visa.png"),
                SizedBox(height: height/30),
                Image.asset("assets/images/HSBC.png"),
                SizedBox(height: height/30),
                Image.asset("assets/images/citybank.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
