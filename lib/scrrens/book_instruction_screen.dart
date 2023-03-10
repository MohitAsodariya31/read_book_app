import 'package:flutter/material.dart';
import 'package:read_book_app/scrrens/user_profile_screen.dart';
import 'package:read_book_app/scrrens/write_a_comment_screen.dart';

class BookInstructionScreen extends StatefulWidget {
  const BookInstructionScreen({Key? key}) : super(key: key);

  @override
  State<BookInstructionScreen> createState() => _BookInstructionScreenState();
}

class _BookInstructionScreenState extends State<BookInstructionScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  List<String> imageData = [
    "assets/images/Avatar1.png",
    "assets/images/Avatar2.png",
    "assets/images/Avatar3.png",
  ];

  List<String> imageDataOne = [
    "assets/images/Facebook.png",
    "assets/images/Google-+.png",
    "assets/images/Line.png",
    "assets/images/LinkedIN.png",
    "assets/images/Mail.png",
  ];
  List<String> textData = [
    "Irina Iriser",
    "Maryellen",
    "Nancy Sartor",
  ];

  List<String> textDataOne = [
    "This book, right off the bat, has two of my favourite things going for it. It's a historical fiction read (one of my...",
    "This book takes two stories from different decades told in alternating chapters and deftly ties them together so...",
    "The Pieces We Keep is a fascinating tale of the pain of loss, mother's love, the power of an innocent child, the....",
  ];

  List<String> textDataTwo = [
    "Facebook",
    "Google+",
    "Line",
    "Linkedln",
    "E-mail",
  ];
  List<String> textDataThree = [
    "Cover",
    "Title page",
    "Copyright",
    "Dedication",
    "Capter 1",
    "Capter 2",
    "Capter 3",
    "Capter 4",
    "Capter 5",
  ];

  List<String> textDataFour = [
    "1",
    "2",
    "3",
    "4",
    "12",
    "18",
    "25",
    "37",
    "48",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.grey.shade800,
        ),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                builder: (context) {
                  return Container(
                    height: 280,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 35,
                        ),
                        const Text(
                          "Share the book",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(height: height / 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: imageDataOne
                              .map((value) => Image.asset(
                                    value,
                                    scale: 0.8,
                                  ))
                              .toList(),
                        ),
                        SizedBox(height: height / 70),
                        Row(
                          children: [
                            SizedBox(width: width / 25),
                            const Text(
                              "Facebook",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: width / 25),
                            const Text(
                              "Google+",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: width / 11),
                            const Text(
                              "Line",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: width / 10),
                            const Text(
                              "Linkedln",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: width / 13),
                            const Text(
                              "E-mail",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height / 15,
                            width: width / 1.1,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF0F2F1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text("Cancel",
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Image(
              image: AssetImage("assets/images/share.png"),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(right: width / 18, left: width / 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Container(
                  height: height / 20,
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 25,
                ),
                Row(
                  children: [
                    Image.asset("assets/images/mask8.png", scale: 2.2),
                    SizedBox(width: width / 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        // SizedBox(
                        //   height: height / 80,
                        // ),
                        Text(
                          "The pieces we keep",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Mary Alice ",
                          style: TextStyle(
                              color: Color(0xFFC7C7CC),
                              fontSize: 16,
                              height: 1.5),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: textDataThree.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    trailing: Text(
                      textDataFour[index],
                      style: const TextStyle(
                        color: Color(0xFFC7C7CC),
                      ),
                    ),
                    leading: Text(
                      textDataThree[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: width / 25, right: width / 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 30),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/mask8.png"),
                  SizedBox(width: width / 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("The pieces we keep"),
                      const SizedBox(height: 8),
                      Text("By Mary Alice ",
                          style: TextStyle(color: Colors.grey.shade400)),
                      SizedBox(
                        height: height / 85,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height / 30,
                            width: width / 4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Historical Fiction",
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey.shade600),
                            ),
                          ),
                          SizedBox(width: width / 20),
                          Container(
                            height: height / 30,
                            width: width / 8,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Sisters",
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey.shade600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 85,
                      ),
                      Image.asset("assets/images/star.png"),
                      SizedBox(
                        height: height / 85,
                      ),
                      const Text(
                        "\$7.50",
                        style: TextStyle(
                          color: Color(0xFF2EBBC3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 20),
              const Text(
                "Introduction",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height / 50),
              const Text(
                "In this richly emotional novel inspired by extraordinary\ntrue accounts, New York Times bestselling author Kristina",
                style: TextStyle(color: Colors.grey, height: 1.8),
              ),
              SizedBox(height: height / 20),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Catalog：The 235 chapter",
                      style: TextStyle(fontSize: 16)),
                  GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Image.asset("assets/images/Catalog.png"),
                  ),
                ],
              ),
              SizedBox(height: height / 70),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Add to bookshlf", style: TextStyle(fontSize: 16)),
                  Image.asset("assets/images/add.png"),
                ],
              ),
              SizedBox(height: height / 70),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    "Comments",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => const WriteACommentScreen(),),);
                    },
                    child: const Text(
                      "write a comment",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF2EBBC3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 50,
              ),
              ListView.builder(
                itemCount: imageData.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  trailing: Image.asset("assets/images/hartimage.png"),
                  leading: Image.asset(imageData[index]),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height / 80),
                      Text(
                        textData[index],
                        style: const TextStyle(color: Color(0xFF8E8E93)),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserProfileScreen(),
                            ),
                          );
                        },
                        child: Text(
                          textDataOne[index],
                          style: const TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 42),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomSheet(
        builder: (context) => Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height / 20,
                width: width / 2.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color(0xFF2EBBC3),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Free trials",
                  style: TextStyle(
                    color: Color(0xFF2EBBC3),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    isDismissible: false,
                    builder: (context) {
                      return Container(
                        height: 500,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width / 22, right: width / 22),
                          child: Column(
                            children: [
                              SizedBox(height: height / 50),
                              Row(
                                children: [
                                  SizedBox(width: width / 2.8),
                                  const Text("Payment",
                                      style: TextStyle(fontSize: 20)),
                                  SizedBox(width: width / 3.6),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(Icons.close,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(height: height / 50),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: height / 35),
                              Container(
                                height: height / 10,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    SizedBox(width: width / 20),
                                    Image.asset("assets/images/mask8.png",
                                        scale: 2.2),
                                    SizedBox(width: width / 20),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // SizedBox(
                                        //   height: height / 80,
                                        // ),
                                        SizedBox(height: height / 45),
                                        const Text("The pieces we keep",
                                            style: TextStyle(fontSize: 18)),
                                        const SizedBox(height: 8),
                                        const Text("Mary Alice ",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height / 30,
                              ),
                              const Text("Sub Total",
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(
                                height: height / 80,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: '7.50',
                                        style: TextStyle(
                                            color: Color(0xFF2EBBC3),
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '\$',
                                        style: TextStyle(
                                            color: Color(0xFF2EBBC3),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(height: height / 35),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: height / 20),
                                  const Text("Discount",
                                      style: TextStyle(
                                          color: Color(0xFF8E8E93),
                                          fontSize: 18)),
                                  SizedBox(width: width / 1.6),
                                  const Text("40%"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: height / 20),
                                  const Text("actual payment",
                                      style: TextStyle(
                                          color: Color(0xFF8E8E93),
                                          fontSize: 18)),
                                  SizedBox(width: width / 2.2),
                                  const Text("＄4.50%",
                                      style: TextStyle(
                                        color: Color(0xFFFCB622),
                                      )),
                                ],
                              ),
                              SizedBox(height: height / 80),
                              Divider(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: height / 15),
                              Container(
                                height: height / 15,
                                width: width / 1.1,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF2EBBC3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: height / 20,
                  width: width / 2.4,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2EBBC3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
