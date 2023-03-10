import 'package:flutter/material.dart';

class AlertDilogeScreen extends StatefulWidget {
  const AlertDilogeScreen({Key? key}) : super(key: key);

  @override
  State<AlertDilogeScreen> createState() => _AlertDilogeScreenState();
}

class _AlertDilogeScreenState extends State<AlertDilogeScreen> {
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
        child: Column(
          children: [
            SizedBox(height: height / 20),
            Center(
              child: Container(
                height: height / 1.5,
                width: width / 1.1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
