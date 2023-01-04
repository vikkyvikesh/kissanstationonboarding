// import 'package:flutter/material.dart';
//
// class DemoPage extends StatefulWidget {
//   const DemoPage({Key? key}) : super(key: key);
//
//   @override
//   State<DemoPage> createState() => _DemoPageState();
// }
//
// class _DemoPageState extends State<DemoPage> {
//   final FirstController = TextEditingController(text: '');
//   final SecondController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     String text1 = '0';
//     final total = text1 + FirstController.text;
//     var totalPrice = double.parse(total) * 50;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: Column(
//         children: [
//           TextFormField(
//             onChanged: (v) => setState(() {
//               totalPrice = 0 + totalPrice;
//             }),
//             decoration: InputDecoration(labelText: 'Price'),
//             controller: FirstController,
//           ),
//           Text(totalPrice.toString()),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height:112,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.5, color: Color(0xff515151)),
        ),
        child: Row(
          children: [
            Image.asset('assets/plantseed.png'),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        Text(
                          'Plant Fertiliser Pellets',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff563E1F)),
                        ),
                        Spacer(),
                        Icon(Icons.star,size: 10,color: Color(0xffEEAC03),),
                        Text(
                          '3.5',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff888888)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16.0),
                        child: Text(
                          '₹150 / Kg',
                          style: TextStyle(color: Color(0xffE26B26)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/admin.png",
                        ),
                        Text(
                          'Seller',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffA6A4A4)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'Ram Prasad Sharma',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff606060)),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),side: BorderSide.none),

                                elevation: 0,
                                minimumSize: Size(
                                  40,
                                  25,
                                ),
                                primary: Color(0xffFFF3D7)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart_rounded,
                                  color: Color(0xffE26B26),
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffE26B26)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




