import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_product_page.dart';

class OrderCardPage extends StatelessWidget {
  const OrderCardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 279,
          width: 335,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffFFFFFF)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Payment Remaining:',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff1A1A1A)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "₹1,000",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffE48912)),
                    )
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Enter Received Amount",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8E8E8E)),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      "₹1,000",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2B2B2B)),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Divider(
                  thickness: 2,
                  color: Color(0xffE4E4E4),
                ),
                SizedBox(height: 45,),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctxt) => AlertDialog(
                        insetPadding: EdgeInsets.all(100),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Payment Remaining:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff1A1A1A)),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "₹1,000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xffE48912)),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                              ],
                            ),
                          ],
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Enter Received Amount",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff8E8E8E)),
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Text(
                              "₹1,000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2B2B2B)),
                            ),
                            SizedBox(height: 12,),
                            Divider(
                              thickness: 2,
                              color: Color(0xffE4E4E4),
                            ),

                          ],
                        ),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SellerProductPage()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                elevation: 0,
                                minimumSize: Size(285,48),
                                primary: Color(0xffE26B26)),
                            child: const Text(
                              'Confirm Payment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 5,
                      minimumSize: Size(285, 48),
                      primary: Color(0xffE26B26)),
                  child: const Text(
                    'Confirm Payment',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
