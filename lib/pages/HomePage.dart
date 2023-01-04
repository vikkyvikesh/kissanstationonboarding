import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/TransportPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    Text(
                      'Drone spraying',
                      style: TextStyle(color: Color(0xff563E1F), fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'ID: 26355',
                  style: TextStyle(
                    color: Color(0xff9C9C9C),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Image.asset('assets/Edit.png'),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kisaan Stations',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Image.asset('assets/kisaanstation.png'),
                    SizedBox(
                      width: 14,
                    ),
                    const Text(
                      'Laalganj Kisaan Station, Mirzapur',
                      style: TextStyle(fontSize: 14, color: Color(0xff563E1F)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset('assets/kisaanstation.png'),
                    const SizedBox(
                      width: 14,
                    ),
                    const Text(
                      'Noida sector 42 Station, Uttarpardesh',
                      style: TextStyle(fontSize: 14, color: Color(0xff563E1F)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset('assets/kisaanstation.png'),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Hoshiarpur, Phagwara, Punjab',
                      style: TextStyle(fontSize: 14, color: Color(0xff563E1F)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Drone Reg. No.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'KR003/IA6A1122G1400125',
                      style: TextStyle(fontSize: 14, color: Color(0xff563E1F)),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Text(
                      'Drone Images',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset('assets/drone1.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset('assets/drone2.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset('assets/drone3.png'),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff000000)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Amet minim mollit non deserunt ullamco est sit ali quadolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff563E1F)),
                ),
                SizedBox(
                  height: 142,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransportPage(),));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 5,
                        minimumSize: Size(308, 48),
                        primary: Color(0xffE26B26)),
                    child: const Text(
                      'View Responses',
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
      ),
    );
  }
}
