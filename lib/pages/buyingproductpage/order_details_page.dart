import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/utills/size.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
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
          'Order Details',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffE26B26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery details",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: Utils.setheight(18, context),
              ),
              Container(
                height: Utils.setheight(120, context),
                width: Utils.setwidth(335, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffFDFAF5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deliver to",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff563E1F)),
                      ),
                      SizedBox(
                        height: Utils.setheight(10, context),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xffD2D2D2),
                      ),
                      SizedBox(
                        height: Utils.setheight(13, context),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/grouplocation.png"),
                          SizedBox(
                            width: Utils.setwidth(14, context),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ram Prasad",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff563E1F)),
                              ),
                              SizedBox(
                                height: Utils.setheight(5, context),
                              ),
                              Text(
                                "227, Muradpur,Uttar Pradesh 110049",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff7E7E7E)),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xffE26B26),
                            size: 19,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Utils.setheight(35, context),
              ),
              Text(
                "Package details",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: Utils.setheight(20, context),
              ),
              Container(
                height: Utils.setheight(80, context),
                width: Utils.setwidth(335, context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD2D2D2),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/garden soiil.png"),
                          SizedBox(
                            width: Utils.setwidth(14, context),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Garden Soil Mix",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff563E1F)),
                              ),
                              SizedBox(
                                height: Utils.setheight(5, context),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Seller: ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7E7E7E)),
                                  ),
                                  Text(
                                    "Ram Prasad Sharma ",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7E7E7E)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "₹ 150.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffE26B26),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Utils.setheight(18, context),
              ),
              Container(
                height: Utils.setheight(80, context),
                width: Utils.setwidth(335, context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD2D2D2),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/garden soiil.png"),
                          SizedBox(
                            width: Utils.setwidth(14, context),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Garden Soil Mix",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff563E1F)),
                              ),
                              SizedBox(
                                height: Utils.setheight(5, context),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Seller: ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7E7E7E)),
                                  ),
                                  Text(
                                    "Ram Prasad Sharma ",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7E7E7E)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "₹ 150.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffE26B26),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Utils.setheight(91, context),
              ),
              const Text(
                "Price Details",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff563E1F),
                ),
              ),
              SizedBox(
                height: Utils.setheight(9, context),
              ),
              Row(
                children: const [
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
                height: Utils.setheight(9, context),
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
                thickness: 2,
                color: Color(0xffDADADA),
              ),
              SizedBox(
                height: Utils.setheight(14, context),
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
            ],
          ),
        ),
      ),
    );
  }
}
