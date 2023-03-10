import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/alert_diloge_screen.dart';

class ArticalPageScreen extends StatefulWidget {
  const ArticalPageScreen({Key? key}) : super(key: key);

  @override
  State<ArticalPageScreen> createState() => _ArticalPageScreenState();
}

class _ArticalPageScreenState extends State<ArticalPageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Row(
          children: [
            const SizedBox(width: 3),
            Icon(
              Icons.arrow_back_sharp,
              color: Colors.grey.shade800,
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.dehaze_rounded,
              color: Color(0xFF2EBBC3),
            ),
          ],
        ),
        title: const Center(
          child: Text("The pieces we kee...",
              style: TextStyle(color: Colors.black, fontSize: 18)),
        ),
        elevation: 0,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModelBottom();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlertDilogeScreen(),
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    showModle();
                  },
                  child: const Icon(
                    Icons.ios_share_outlined,
                    color: Color(0xFF2EBBC3),
                  ),
                ),
              ),
              SizedBox(width: width / 25),
              const Icon(
                Icons.settings,
                color: Color(0xFF2EBBC3),
              ),
              SizedBox(width: width / 25),
            ],
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(right: width / 18, left: width / 18),
          child: Column(
            children: [
              SizedBox(height: height / 25),
              const Text(
                "The sound of her name, in that deep familiar timbre, swept through Audra like a winter gale. Her lungs pulled a sharp breath. Her forearms prickled. In line at the airport gate, she clutched the shoulder strap of her carry-on, a makeshift lifeline, and turned toward the voice.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: height / 25),
              const Text(
                "“Babe, you want anything else?” the man in a floral-print shirt hollered from the coffee stand.“Andrea?”  “Just the vanilla latte,” a woman replied from a nearby table, then resumed chatting on her phone.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: height / 25),
              const Text(
                "For an eternal moment Audra Hughes remained frozen. She braced against the aftershock of hope, like the rush of a near car collision, when blood rages in your ears and every pore yawns open. Even now, two years after her husband’s death, she hadn’t conquered the reflex, nor the guilt. But in time she would, and today’s trip would serve as a major step, regardless of others’ opinions.",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showModelBottom() {
    showModalBottomSheet(
      context: context,
      // isDismissible: false,
      builder: (context) {
        return Container(
          height: 160,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/pic-1.png"),
                  Image.asset("assets/images/pic-2.png"),
                  Image.asset("assets/images/pic-3.png"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cancel",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("share",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  showModle() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 600,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset("assets/images/Mask Group 174.png"),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Text(
                    "you want anything else?” the man in a floral-print shirt hollered from the coffee stand. “Andrea?” “Just the vanilla latte,” a woman replied from a nearby table, then resumed chatting on"),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/pic-1.png"),
                  Image.asset("assets/images/pic-2.png"),
                  Image.asset("assets/images/pic-3.png"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cancel",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("share",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
