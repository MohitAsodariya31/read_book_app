import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/transaction_record.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({Key? key}) : super(key: key);

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  Map data = {
    "data": [
      {
        "data1": "A Mother Like Mine ",
        "data2": "17 Feb 2019 ",
        "data3": "/-＄5.50 ",
      },
      {
        "data1": "Orphan Train Trials",
        "data2": "24 Dec 2018",
        "data3": "/-＄6.50",
      },
      {
        "data1": "Daughters of War",
        "data2": "14 Jun 2018",
        "data3": "/+＄80.00",
      },
      {
        "data1": "A Family Affair",
        "data2": "23 Mar 2018",
        "data3": "/-＄9.50",
      },
    ],
  };

  List<String> textdata = [
    "A Mother Like Mine ",
    "Orphan Train Trials",
    "Daughters of War",
    "A Family Affair",
  ];
  List<String> datedata = [
    "17 Feb 2019 ",
    "24 Dec 2018",
    "Daughters of War",
    "A Family Affair",
  ];
  List<String> dollardata = [
    "/-＄5.50 ",
    "/-＄6.50",
    "/+＄80.00",
    "/-＄9.50",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFF2EBBC3),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text("My Account"),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height / 2.7,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  Container(
                    height: height / 3.5,
                    width: double.infinity,
                    color: const Color(0XFF2EBBC3),
                    child: Column(
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(color: Colors.white, fontSize: text * 13),
                        ),
                        Text(
                          "65.00＄",
                          style: TextStyle(color: Colors.white, fontSize: text * 40),
                        ),
                        SizedBox(
                          height: height / 20,
                        ),
                        Container(
                          height: height / 20,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "Deposit",
                              style: TextStyle(
                                color: Color(0xFF2EBBC3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height / 4,
                      left: width / 10,
                      right: width / 10,
                    ),
                    child: Container(
                      height: height / 10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/bank card.png"),
                              SizedBox(width: width / 24),
                              const Text(
                                "My card",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/coupon.png"),
                              SizedBox(width: width / 24),
                              const Text(
                                "Coupon",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 14,
                  ),
                  const Text(
                    "Recent Transactions",
                    style: TextStyle(
                      color: Color(0XFFC7C7CC),
                    ),
                  ),
                  SizedBox(
                    width: width / 2.6,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionRecord(),
                          ));
                    },
                    child: const Text(
                      "view all",
                      style: TextStyle(
                        color: Color(0XFFC7C7CC),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.navigate_next,
                    color: Color(0XFFC7C7CC),
                  ),
                ],
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text(data["data"][index]["data1"]),
                  subtitle: Text(data["data"][index]["data2"]),
                  trailing: Container(
                    width: width / 3.7,
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Text(
                          data["data"][index]["data2"],
                          style: TextStyle(
                            color: index == 2 ? const Color(0xFF2EBBC3) : const Color(0xFFFF6D73),
                          ),
                        ),
                        const Icon(
                          Icons.navigate_next_outlined,
                          color: Color(0XFFC7C7CC),
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: data["data"].length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
