import 'package:flutter/material.dart';

import '../common/button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Map data = {
    "data": [
      {
        "data1": "assets/images/bank card.png",
        "data2": "Bank Card",
        "data3": "**** **** **** 1766  HSBC",
        "data4": false,
      },
      {
        "data1": "assets/images/apple.png",
        "data2": "Apple Pay",
        "data3": "",
        "data4": false,
      },
      {
        "data1": "assets/images/MasterCard.png",
        "data2": "MasterCard",
        "data3": "**** **** **** 3247",
        "data4": false,
      },
      {
        "data1": "assets/images/PayPal.png",
        "data2": "PayPal",
        "data3": "sawadika@gmail.com",
        "data4": false,
      },
      {
        "data1": "assets/images/balance.png",
        "data2": "Account Balance",
        "data3": "Available Balance:＄65.00",
        "data4": false,
      },
      {
        "data1": "assets/images/new card.png",
        "data2": "New Card",
        "data3": "Add a new bank card",
        "data4": false,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width / 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height / 30,
                      ),
                      const Text(
                        "Sub Total",
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                        ),
                      ),
                      SizedBox(
                        height: height / 150,
                      ),
                      Text(
                        "11.50＄",
                        style: TextStyle(color: const Color(0xFF2EBBC3), fontSize: text * 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      const Text(
                        "Transaction ID",
                        style: TextStyle(
                          color: Color(0xFF8E8E93),
                        ),
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      const Text(
                        "201805313215469874",
                        style: TextStyle(color: Color(0xFF2EBBC3)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 20),
                const Text(
                  "Choose Payment Method",
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Expanded(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ListTile(
                        leading: Image.asset(
                          data["data"][index]["data1"],
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["data"][index]["data2"],
                            ),
                            Text(
                              data["data"][index]["data3"],
                            ),
                          ],
                        ),
                        trailing: Checkbox(
                          checkColor: const Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          fillColor: MaterialStateProperty.resolveWith(
                            (states) => getColor(states),
                          ),
                          value: data["data"][index]["data4"],
                          onChanged: (bool? value) {
                            setState(() {
                              data["data"][index]["data4"] = value!;
                            });
                          },
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: height / 30,
                      ),
                      itemCount: data["data"].length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomSheet(
        builder: (context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Button(
            text: "Pay Now",
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
