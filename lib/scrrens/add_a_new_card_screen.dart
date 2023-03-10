import 'package:flutter/material.dart';

class AddANewCardScreen extends StatefulWidget {
  const AddANewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddANewCardScreen> createState() => _AddANewCardScreenState();
}

class _AddANewCardScreenState extends State<AddANewCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: width / 25, right: width / 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height / 25),
                Padding(
                  padding: EdgeInsets.only(left: width / 30),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/back.png"),
                      SizedBox(width: width / 5),
                      const Text(
                        "Add A New Card",
                        style: TextStyle(
                          fontSize: 17,
                          // fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 25),
                Image.asset("assets/images/visa.png"),
                SizedBox(height: height / 25),
                Padding(
                  padding: EdgeInsets.only(left: width / 25),
                  child: Row(
                    children: const [
                      Text("Edit Card Details"),
                    ],
                  ),
                ),
                SizedBox(height: height / 35),
                Container(
                  height: height / 2.8,
                  width: width / 1.15,
                  // color: Color(0xFFF6F8FA),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
