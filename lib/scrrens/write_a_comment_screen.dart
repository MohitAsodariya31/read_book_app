import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/artical_page_screen.dart';

class WriteACommentScreen extends StatefulWidget {
  const WriteACommentScreen({Key? key}) : super(key: key);

  @override
  State<WriteACommentScreen> createState() => _WriteACommentScreenState();
}

class _WriteACommentScreenState extends State<WriteACommentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.grey.shade800,
          ),
        ),
        title: const Center(
            child: Text("Write a comment",
                style: TextStyle(color: Colors.black, fontSize: 18))),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArticalPageScreen(),
                ),
              );
            },
            child: const Text(
              "Publish",
              style: TextStyle(
                color: Color(0xFF2EBBC3),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Container(
              height: height / 11,
              width: double.infinity,
              color:   Color(0xFFF1F2F3),
              child: Image.asset("assets/images/5star.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 20, top: height / 80),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "write a comment...",
                  hintStyle: TextStyle(fontSize: 17),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                ),
                maxLines: 8,
                minLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
