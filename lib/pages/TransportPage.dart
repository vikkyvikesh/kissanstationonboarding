import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kissanstationonboarding/pages/ViewPage.dart';

class TransportPage extends StatelessWidget {
  const TransportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/Vector (6).png"),
              SizedBox(
                width: 25,
              ),
              const Text(
                "Back",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffE252525)),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 493,
                      width: 375,
                      child: Image.asset('assets/map.png')),
                  Positioned(
                    top: 250,
                    // bottom: 2,
                    child: Container(
                      height: 285,
                      width: 375,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(47),
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Lining.png',
                            alignment: Alignment.topCenter,
                            color: Color(0xffD9D9D9),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  // radius: 24,
                                  // backgroundColor: Colors.red,
                                  child: Image.asset("assets/farmer.png"),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Rajesh Kumar",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff563E1F),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Laalganj KS, Mirzapur - 192764",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffE26B26)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Image.asset('assets/call (1).png'),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color(0xffC1C1C1),
                            thickness: 0.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Drone Spraying',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff969696)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        "12 Dec, 2022  |  9:30 AM "),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewPage(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  elevation: 5,
                                  minimumSize: Size(308, 48),
                                  primary: Color(0xffE26B26)),
                              child: const Text(
                                'Arrived',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
