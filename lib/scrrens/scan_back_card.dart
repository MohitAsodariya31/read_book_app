import 'package:flutter/material.dart';

class ScanBackScreen extends StatefulWidget {
  const ScanBackScreen({Key? key}) : super(key: key);

  @override
  State<ScanBackScreen> createState() => _ScanBackScreenState();
}

class _ScanBackScreenState extends State<ScanBackScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/mask.png",
            fit: BoxFit.fill,
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }
}
