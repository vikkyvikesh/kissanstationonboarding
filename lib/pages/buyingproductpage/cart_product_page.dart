import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:im_stepper/stepper.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/select_address_page.dart';

import '../utills/size.dart';



class CartProductPage extends StatefulWidget {
  const CartProductPage({Key? key}) : super(key: key);

  @override
  State<CartProductPage> createState() => _CartProductPageState();
}

class _CartProductPageState extends State<CartProductPage> {
  // bool availStatus = false;
  int ttlNoOfDrones = 0;
  int ttlNoOfDrones1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff585858),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffE26B26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0,),
                child: Row(
                  children: [
                    Container(
                      height: 17,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: Color(0xffE26B26),
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
                          Icons.circle_rounded,
                          color: Color(0xffE1E1E1),
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
                          color: Color(0xffE1E1E1),
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
              ),
              SizedBox(height: Utils.setheight(10, context),),
              Column(
                children: [
                  Text(
                    "2 Items",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff563E1F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff000000).withOpacity(0.1)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 23, top: 13, bottom: 76),
                      child: Image.asset('assets/plantseed.png'),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: const [
                                Text(
                                  'Garden Soil Mix',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff563E1F)),
                                ),
                                Spacer(),
                                Text(
                                  '₹150.00 ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffE26B26)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, bottom: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      'Seller: ',
                                      style:
                                          TextStyle(color: Color(0xffA6A4A4)),
                                    ),
                                    Text(
                                      'Ram Prasad Sharma',
                                      style:
                                          TextStyle(color: Color(0xff606060)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {});
                                      if (ttlNoOfDrones > 0) {
                                        ttlNoOfDrones--;
                                      }
                                    },
                                    child: CircleAvatar(
                                        backgroundColor: Color(0xffFFFFFF),
                                        child: Image.asset(
                                          'assets/minus.png',
                                          color: Color(0xff414141),
                                        ))),
                                Center(
                                    child: Text(
                                  "0${ttlNoOfDrones.toString()}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffE26B26),
                                      fontWeight: FontWeight.w600),
                                )),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                    ttlNoOfDrones++;
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffFFFFFF),
                                    child: Image.asset(
                                      'assets/plus.png',
                                      color: Color(0xffE26B26),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                    onTap: () {},
                                    child:
                                        Image.asset("assets/deleteimage.png"))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff000000).withOpacity(0.1)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 23, top: 13, bottom: 76),
                      child: Image.asset('assets/plantseed.png'),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: const [
                                Text(
                                  'Garden Soil Mix',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff563E1F)),
                                ),
                                Spacer(),
                                Text(
                                  '₹150.00 ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffE26B26)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, bottom: 20),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Seller: ',
                                      style:
                                          TextStyle(color: Color(0xffA6A4A4)),
                                    ),
                                    Text(
                                      'Ram Prasad Sharma',
                                      style:
                                          TextStyle(color: Color(0xff606060)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {});
                                      if (ttlNoOfDrones1 > 0) {
                                        ttlNoOfDrones1--;
                                      }
                                    },
                                    child: CircleAvatar(
                                        backgroundColor: Color(0xffFFFFFF),
                                        child: Image.asset(
                                          'assets/minus.png',
                                          color: Color(0xff414141),
                                        ))),
                                Center(
                                    child: Text(
                                  "0${ttlNoOfDrones1.toString()}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffE26B26),
                                      fontWeight: FontWeight.w600),
                                )),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                    ttlNoOfDrones1++;
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffFFFFFF),
                                    child: Image.asset(
                                      'assets/plus.png',
                                      color: Color(0xffE26B26),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                    onTap: () {},
                                    child:
                                        Image.asset("assets/deleteimage.png"))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
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
                height: 14,
              ),
              Divider(
                thickness: 0.5 ,
                color: Color(0xffDADADA),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Text(
                    "Grand Total",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff563E1F),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "₹ 325.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xffE26B26),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(18))),
                        builder: (context) => Padding(
                              padding:
                                  const EdgeInsets.only(top: 27.0, left: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Saved Address",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff563E1F)),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Container(
                                    height: 92,
                                    // width: 335,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFDFAF5),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ram Prasad',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff563E1F)),
                                          ),
                                          SizedBox(
                                            height: 13.50,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/Location (1).png',
                                                    color: Color(0xffCE9141),
                                                  ),
                                                  SizedBox(
                                                    width: 11,
                                                  ),
                                                  Text(
                                                    '227, ',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xffCE9141)),
                                                  ),
                                                  Text(
                                                    'Muradpur,Uttar Pradesh',
                                                    maxLines: 2,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xffCE9141)),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 22.0),
                                                child: Text(
                                                  '110049',
                                                  maxLines: 2,
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xffCE9141)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 92,
                                    // width: 335,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFDFAF5),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ram Prasad',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff563E1F)),
                                          ),
                                          SizedBox(
                                            height: 13.50,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/Location (1).png',
                                                    color: Color(0xffCE9141),
                                                  ),
                                                  SizedBox(
                                                    width: 11,
                                                  ),
                                                  Text(
                                                    '227, ',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xffCE9141)),
                                                  ),
                                                  Text(
                                                    'Muradpur,Uttar Pradesh',
                                                    maxLines: 2,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xffCE9141)),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 22.0),
                                                child: Text(
                                                  '110049',
                                                  maxLines: 2,
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xffCE9141)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 95,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SelectAddressPage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(59)),
                                          elevation: 1,
                                          minimumSize: Size(335, 48),
                                          backgroundColor: Color(0xffECECEC)),
                                      child: const Text(
                                        '+   Add New Address',
                                        style: TextStyle(
                                          color: Color(0xff563E1F),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(59)),
                      elevation: 1,
                      minimumSize: Size(335, 48),
                      backgroundColor: Color(0xffE26B26)),
                  child: const Text(
                    'Proceed to Checkout',
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
    );
  }
}

//
// FlutterSwitch(
// width: 43.0,
// height: 22.0,
// valueFontSize: 60.0,
// toggleSize: 22.0,
// value: availStatus,
// borderRadius: 18.0,
// padding: 4.0,
// activeColor: const Color(0xffE26B26),
// inactiveColor: const Color(0xffB6B6B6),
// showOnOff: true,
// onToggle: (val)  {
// availStatus = val;
//
//
// setState(() {});
// print("debug coming");
// }
// ),
