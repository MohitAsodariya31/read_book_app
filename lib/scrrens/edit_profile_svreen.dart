import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController dateController = TextEditingController();

  void selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          const Center(
            child: Text(
              "Save",
              style: TextStyle(color: Color(0xFF2EBBC3)),
            ),
          ),
          SizedBox(
            width: width / 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height / 3,
                    width: double.infinity,
                  ),
                  Container(
                    height: height / 5,
                    width: double.infinity,
                    color: Colors.grey.shade100,
                    child: Icon(Icons.camera_alt_sharp, color: Colors.grey.shade400),
                  ),
                  Positioned(
                    top: height / 7,
                    left: width / 20,
                    child: Image.asset("assets/images/Avatar.png"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Username",
                          style: TextStyle(
                            color: Color(0XFF8D949E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Location",
                          style: TextStyle(
                            color: Color(0XFF8D949E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Sex",
                          style: TextStyle(
                            color: Color(0XFF8D949E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        selectDate(context);
                      },
                      child: TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                          hintText: "birthdate",
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                          // enabled: false,
                          // disabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(15),
                          //   borderSide: const BorderSide(color: Colors.black38),
                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Customize  My  Interests",
                          style: TextStyle(
                            color: Color(0XFF8D949E),
                          ),
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
    );
  }
}
