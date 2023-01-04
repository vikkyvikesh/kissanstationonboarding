import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/order_delivered_page.dart';

import '../utills/size.dart';

class SelectPaymentPage extends StatefulWidget {
  const SelectPaymentPage({Key? key}) : super(key: key);

  @override
  State<SelectPaymentPage> createState() => _SelectPaymentPageState();
}

class _SelectPaymentPageState extends State<SelectPaymentPage> {
  final List _items = ["Credit card", "Debit card"];
  final List _payments = ["Google Pay", "Phone Pay", "Paytm", "Upi"];
  final _dronenumbercontroller = TextEditingController();
  final _paymentmathodcontroller = TextEditingController();

  int predominant = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5C5C5C))),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Select Address',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffE26B26)),
                    ),
                  ],
                ),
                // SizedBox(height: 33.67,),
                // SizedBox(height: MediaQuery.of(context).size.height*0.044,),
                SizedBox(height: Utils.setheight(33.67, context)),
                Row(
                  children: [
                    Container(
                      height: 17,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xff189634),
                        ),
                        Text(
                          'Cart',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff404040)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, left: 12),
                      child: Container(
                        width: 60,
                        height: 1,
                        color: Color(0xff5F5F5F),
                      ),
                    ),
                    Container(
                      height: 17,
                      width: 17,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xff189634),
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff404040)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, left: 12),
                      child: Container(
                        width: 60,
                        height: 1,
                        color: Color(0xffCECECE),
                      ),
                    ),
                    Container(
                      height: 17,
                      width: 17,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: Color(0xffE26B26),
                        ),
                        Text(
                          'Payment',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff404040)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Utils.setheight(59, context),
                ),
                SizedBox(
                  height: Utils.setheight(50, context),
                  child: TextField(
                    readOnly: true,
                    style: const TextStyle(
                        color: const Color(0xff2b2b2b),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    controller: _dronenumbercontroller,
                    decoration: InputDecoration(
                      hintText: "Select your card type",
                      hintStyle: TextStyle(
                          color: const Color(0xff8e8e8e),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down,color: Color(0xff585858),),
                        onSelected: (String value) {
                          _dronenumbercontroller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _items.map<PopupMenuItem<String>>((value) {
                            return PopupMenuItem(
                                child: Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Utils.setheight(50, context),
                  child: TextField(
                    readOnly: true,
                    style:  TextStyle(
                        color:  Color(0xff2b2b2b),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    controller: _paymentmathodcontroller,
                    decoration: InputDecoration(
                      hintText: "Selects your payment methods",
                      hintStyle: TextStyle(
                          color: const Color(0xff8e8e8e),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down,color: Color(0xff585858),),
                        onSelected: (String value) {
                          _paymentmathodcontroller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return _payments.map<PopupMenuItem<String>>((value) {
                            return PopupMenuItem(
                                child: Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text(
                    'Cash On Delivery',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff563E1F)),
                  ),
                  Radio(
                    activeColor: Colors.blueAccent,
                    value: 1,
                    groupValue: predominant,
                    onChanged: (int? val) {
                      setState(() {
                        predominant = val!;
                        if (val == 0) {
                          predominant = 0;
                        } else {
                          predominant = 1;
                        }
                      });
                    },
                  ),
                ]),

                SizedBox(
                  height: Utils.setheight(190, context),
                ),
                Divider(
                  thickness: 0.5,
                  color: Color(0xffECECEC),
                ),
                SizedBox(
                  height: Utils.setheight(41, context),
                ),
                Text(
                  "Price Details",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff563E1F),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      "Product Price",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff563E1F),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹ 300.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff757575),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Charges",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff563E1F),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹ 25.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff757575),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Utils.setheight(14, context),
                ),
                Divider(
                  thickness: 0.5,
                  color: Color(0xffDADADA),
                ),
                SizedBox(
                  height: Utils.setheight(14, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "₹ 325.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff563E1F),
                          ),
                        ),
                        Text(
                          "View Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffE26B26),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderDeliveredPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          elevation: 1,
                          minimumSize: Size(216, 47),
                          backgroundColor: Color(0xffE26B26)),
                      child: const Text(
                        'Pay Now',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
