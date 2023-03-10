import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/button.dart';

class PaySuccessfullScreen extends StatefulWidget {
  const PaySuccessfullScreen({Key? key}) : super(key: key);

  @override
  State<PaySuccessfullScreen> createState() => _PaySuccessfullScreenState();
}

class _PaySuccessfullScreenState extends State<PaySuccessfullScreen> {
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
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Payment",
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
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  Image.asset(
                    "assets/images/successful.png",
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Text(
                    "Payment Successful !",
                    style: TextStyle(color: const Color(0xFF2EBBC3), fontSize: text * 20),
                  ),
                  SizedBox(
                    height: height / 150,
                  ),
                  const Text(
                    "Transaction ID:201805313215469874",
                    style: TextStyle(
                      color: Color(0xFF8E8E93),
                    ),
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: height / 2.1,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "DATE",
                                  style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                  ),
                                ),
                                Text(
                                  "TIME",
                                  style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("22 July  2019"),
                                Text("12:35:42"),
                              ],
                            ),
                            SizedBox(
                              height: height / 20,
                            ),
                            const Text("---------------------------------------------------------------------------------"),
                            SizedBox(
                              height: height / 20,
                            ),
                            Row(
                              children: [
                                const Text("Sub Total"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "11.50＄",
                                  style: TextStyle(
                                    color: Color(0xFF2EBBC3),
                                    fontSize: text * 20,
                                  ),
                                ),
                                Container(
                                  height: height / 20,
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFFFCB622),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "details",
                                      style: TextStyle(
                                        color: Color(0xFFFCB622),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height / 20,
                            ),
                            Container(
                              height: height / 9,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width / 15,
                                  ),
                                  Image.asset(
                                    "assets/images/bank card.png",
                                    scale: 0.6,
                                  ),
                                  SizedBox(
                                    width: width / 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Bank Card"),
                                      Text(
                                        "**** **** **** 1766  HSBC",
                                        style: TextStyle(
                                          color: Color(0xFF8E8E93),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            Button(
              text: "Done",
            ),
          ],
        ),
      ),
    );
  }
}
