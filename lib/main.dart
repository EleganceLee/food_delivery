import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://s359.kapook.com/r/600/auto/pagebuilder/c77a4980-a5a6-4d23-8e61-48ea58f25879.jpg"),
              ),
            ),
          ),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tesla model 3",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 195, 188, 188)),
              ),
              const Text(
                "Pasktick Cha",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          excludeHeaderSemantics: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                color: Color.fromARGB(255, 0, 95, 248)),
          ),
          actions: [
            Container(
              height: 60,
              width: sw * 0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 16, 5),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 4,
                  color: Color.fromARGB(255, 40, 63, 42),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Wallet",
                            style: TextStyle(
                                fontSize: 8,
                                color: Color.fromARGB(255, 195, 188, 188)),
                          ),
                          Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "780.00",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 40, 63, 42),
                radius: 30,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(13.7658368, 100.5518848),
                zoom: 14,
              ),
            ),
          ),
          Positioned(
            top: 130 + 20,
            width: sw,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: sw * 0.7,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 66, 254, 194),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: sw * 0.2,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 66, 254, 194),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: ClipPath(
      //   clipper: FloatingClipPath(),
      //   child: Container(
      //     height: 150,
      //     width: sw * 0.8,
      //     decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 43, 43, 43),
      //       borderRadius: BorderRadius.circular(40),
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Icon(
      //           Icons.location_on_outlined,
      //           size: 40,
      //           color: Colors.white,
      //         ),
      //         CircleAvatar(
      //           radius: 100,
      //           backgroundColor: Color.fromARGB(255, 202, 149, 149),
      //           child: Icon(
      //             Icons.qr_code_scanner,
      //             size: 40,
      //             color: Colors.white,
      //           ),
      //         ),
      //         Icon(
      //           Icons.person,
      //           size: 40,
      //           color: Colors.white,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: Container(
        height: 100,
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  "assets/images/ss.svg",
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              width: sw,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.map_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.map_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.map_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var w = size.width;
    var h = size.height;

    path.moveTo(w * 0.2, 0);
    path.quadraticBezierTo(w * 0.5, h - 100, w, h);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
