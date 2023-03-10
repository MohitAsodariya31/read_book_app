import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/home_screen.dart';

// import 'package:flutter_sound/flutter_sound.dart';
// import 'package:permission_handler/permission_handler.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // final recorder = FlutterSoundRecorder();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   initRecorder();
  // }

  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   recorder.closeRecorder();
  //   super.dispose();
  // }

  // Future initRecorder() async {
  //   final status = await Permission.microphone.request();
  //
  //   if (status != PermissionStatus.granted) {
  //     throw 'Microphone permission not granted';
  //   }
  //   await recorder.openRecorder();
  // }

  // Future record() async {
  //   await recorder.startRecorder(toFile: 'audio');
  // }
  //
  // Future stop() async {
  //   await recorder.stopRecorder();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(left: width / 18, right: width / 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height / 30),
                Row(
                  children: [
                    Container(
                      width: width / 1.5,
                      height: height / 20,
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: const Icon(Icons.mic),
                          hintText: "search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 5),
                        ),
                      ),
                    ),
                    SizedBox(width: width / 17),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "History",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset("assets/images/delete-icon.png"),
                  ],
                ),
                SizedBox(height: height / 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height / 25,
                      width: width / 4.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Business",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: height / 25,
                      width: width / 3.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Science Fiction",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: height / 25,
                      width: width / 5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "book",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height / 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height / 25,
                      width: width / 4.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Romance",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: height / 25,
                      width: width / 6,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "child",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: height / 25,
                      width: width / 2.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "Colony of the Lost",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height / 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "You may like",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset("assets/images/Refresh.png"),
                  ],
                ),
                SizedBox(height: height / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/book1.png"),
                        SizedBox(
                          height: height / 80,
                        ),
                        const Text(
                          "Good Man ...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "McQuestion",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/book2.png"),
                        SizedBox(
                          height: height / 80,
                        ),
                        const Text(
                          "Ask Me to...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Terri Osburn",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/book3.png"),
                        SizedBox(
                          height: height / 80,
                        ),
                        const Text(
                          "A Dream to...",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          "Kay Correll",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // StreamBuilder<RecordingDisposition>(
                //   stream: recorder.onProgress,
                //   builder: (context, snapshot) {
                //     final duration = snapshot.hasData ? snapshot.data!.duration : Duration.zero;
                //
                //     return Text("${duration.inSeconds}");
                //   },
                // ),
                SizedBox(height: height / 7),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isDismissible: false,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 250,
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(height: height / 50),
                                Row(
                                  children: [
                                    SizedBox(width: width / 2.8),
                                    const Text("I am listening...",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                    SizedBox(width: width / 3.5),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height / 60),
                                const Divider(
                                  indent: 20,
                                  endIndent: 20,
                                ),
                                SizedBox(height: height / 20),
                                Image.asset("assets/images/symbol.png"),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Image.asset("assets/images/voice.png"),
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
