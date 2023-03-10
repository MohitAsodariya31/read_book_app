import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  Map data = {
    "imageData": [
      {
        "data1": "assets/images/dannyrise.png",
        "data2": "Danny Rice",
        "data3": "03-05  08:57",
        "data4": "First, this book has done for me what I wanted it to do: it’s helping me get rid of junk.",
        "data5": "assets/images/mask1.png",
        "data6": "The Life-Changing",
        "data7": "Marie Kondō",
      },
      {
        "data1": "assets/images/dannyrise.png",
        "data2": "Danny Rice",
        "data3": "01-14  09:22",
        "data4": "More like a harlequin romance novels rather than historical fiction.",
        "data5": "assets/images/orphan.png",
        "data6": "An Orphan’s War",
        "data7": "Molly Green",
      },
    ],
  };

  bool follow = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2EBBC3),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: [
          Image.asset("assets/images/share.png", color: Colors.white),
        ],
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
                    height: height / 3,
                    color: Colors.white,
                  ),
                  Container(
                    height: height / 5.5,
                    width: double.infinity,
                    color: const Color(0xFF2EBBC3),
                  ),
                  Positioned(
                    top: height / 10,
                    left: width / 12,
                    child: Container(
                      height: height / 4.4,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF2EBBC3),
                            blurRadius: 25,
                            spreadRadius: 0.5,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 16,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Danny Rice",
                                    style: TextStyle(color: Colors.black, fontSize: text * 22),
                                  ),
                                  Text(
                                    "ID:67589634",
                                    style: TextStyle(color: Colors.grey, fontSize: text * 15),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width / 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    follow = !follow;
                                  });
                                },
                                child: Container(
                                  height: height / 25,
                                  width: width / 3.5,
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF2EBBC3),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: const Color(0xFF2EBBC3)),
                                  ),
                                  child: Center(
                                    child: follow
                                        ? const Text(
                                            "unfollow",
                                            style: TextStyle(
                                              color: Color(0xFF2EBBC3),
                                            ),
                                          )
                                        : const Text(
                                            "follow",
                                            style: TextStyle(
                                              color: Color(0xFF2EBBC3),
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Expanded(
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "568",
                                    style: TextStyle(color: Colors.black, fontSize: text * 22),
                                  ),
                                  Text(
                                    "Comments",
                                    style: TextStyle(color: Colors.grey, fontSize: text * 15),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "243",
                                    style: TextStyle(color: Colors.black, fontSize: text * 22),
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(color: Colors.grey, fontSize: text * 15),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "45K",
                                    style: TextStyle(color: Colors.black, fontSize: text * 22),
                                  ),
                                  Text(
                                    "Follower",
                                    style: TextStyle(color: Colors.grey, fontSize: text * 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height / 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 6.5,
                    top: height / 20,
                    child: Image.asset("assets/images/dannyrise.png", scale: 0.8),
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 15, right: width / 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Reading Record", style: TextStyle(fontSize: 20)),
                        const Text("View All >", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/myjobbookimage.png", scale: 2),
                        Image.asset("assets/images/goodmanbookimage.png", scale: 2),
                        Image.asset("assets/images/motherlikemanbookimage.png", scale: 2),
                        Image.asset("assets/images/marry campisi.png"),
                        Image.asset("assets/images/orphan.png"),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: height / 60),
                    const Text("Comments", style: TextStyle(fontSize: 18, color: Colors.grey)),
                    SizedBox(height: height / 30),
                    Container(
                      height: 400,
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) => ListTile(
                          // trailing: Image.asset("assets/images/hartimage.png"),
                          leading: Image.asset(
                            data["imageData"][index]["data1"],
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data["imageData"][index]["data2"],
                                    style: const TextStyle(color: Color(0xFF8E8E93)),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/hartimage.png"),
                                      SizedBox(
                                        width: width / 32,
                                      ),
                                      Text(
                                        data["imageData"][index]["data3"],
                                        style: const TextStyle(color: Color(0XFF8E8E93)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height / 83,
                              ),
                              Text(
                                data["imageData"][index]["data4"],
                              ),
                              SizedBox(
                                height: height / 40,
                              ),
                              Container(
                                height: height / 10,
                                width: width / 1,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F2F3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: height / 65, left: width / 20),
                                      child: Image.asset(
                                        data["imageData"][index]["data5"],
                                      ),
                                    ),
                                    SizedBox(
                                      width: width / 35,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data["imageData"][index]["data6"],
                                        ),
                                        Text(
                                          data["imageData"][index]["data7"],
                                          style: const TextStyle(color: Color(0xFFC7C7CC)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height / 50,
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => const Divider(),
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
