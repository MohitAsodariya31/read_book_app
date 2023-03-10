import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 25),
                Padding(
                  padding: EdgeInsets.only(left: width / 35, right: width / 30),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/back.png",
                      ),
                      SizedBox(
                        width: width / 5,
                      ),
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
                SizedBox(
                  height: height / 25,
                ),
                CreditCardWidget(
                  glassmorphismConfig: Glassmorphism(
                    blurX: 10.0,
                    blurY: 10.0,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff2EBBC3),
                        Color(0xff2EBBC3),
                      ],
                      stops: <double>[
                        0.3,
                        0,
                      ],
                    ),
                  ),
                  cardNumber: '6213 0683 5689 2358',
                  expiryDate: '05/21',
                  cardHolderName: 'Alexandru Lucian',
                  cvvCode: '485',
                  showBackView: false,
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: width / 19),
                  child: const Text(
                    "Edit Card Details",
                    style: TextStyle(
                      color: Color(0xff8E8E93),
                    ),
                  ),
                ),
                SizedBox(height: height / 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height / 3,
                    width: width / 1.2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 500,
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            width: 500,
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 140,
                                margin: const EdgeInsets.only(left: 15, right: 15),
                                decoration: const BoxDecoration(
                                  color: Color(0xffF1F2F3),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 140,
                                margin: const EdgeInsets.only(left: 15, right: 15),
                                decoration: const BoxDecoration(
                                  color: Color(0xffF1F2F3),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
