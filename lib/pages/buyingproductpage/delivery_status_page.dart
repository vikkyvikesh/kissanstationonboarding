import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/cancel_order_page.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/order_details_page.dart';
import 'package:order_tracker/order_tracker.dart';

import '../utills/size.dart';

class DeliveryStatusPage extends StatefulWidget {
  const DeliveryStatusPage({Key? key}) : super(key: key);

  @override
  State<DeliveryStatusPage> createState() => _DeliveryStatusPageState();
}

class _DeliveryStatusPageState extends State<DeliveryStatusPage> {
  List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
    // TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
    // TextDto("Your item has been picked up by courier partner.", "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
    // TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
  ];
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
          'Delivery Status',
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
              Image.asset("assets/Holding Box.png"),
              SizedBox(
                height: Utils.setheight(22, context),
              ),
              Text(
                "Estimated delivery time",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff929292)),
              ),
              SizedBox(
                height: Utils.setheight(8, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "14th Aug",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2F2F2F)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CancelOrderPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: Utils.setheight(27, context),
                      width: Utils.setwidth(98, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xffE52145),
                            width: 1,
                          )),
                      child: Row(
                        children: [
                          Icon(
                            Icons.clear_outlined,
                            color: Color(0xffE52145),
                          ),
                          Text(
                            'Cancel Order',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffE52145),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Utils.setheight(40, context),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                ),
                elevation: 4,
                color: Colors.white,
                child: Container(
                  height: Utils.setheight(360, context),
                  width: Utils.setwidth(335, context),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Track Order',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff151515),
                              ),
                            ),
                            Text(
                              'ID: XL54DE ',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff737373),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Utils.setheight(17, context),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Color(0xffDFDFDF),
                        ),
                        SizedBox(
                          height: Utils.setheight(10, context),
                        ),
                        OrderTracker(
                          status: Status.outOfDelivery,
                          activeColor: Colors.green,
                          inActiveColor: Colors.grey[300],
                          orderTitleAndDateList: orderList,
                          shippedTitleAndDateList: shippedList,
                          outOfDeliveryTitleAndDateList: outOfDeliveryList,
                          deliveredTitleAndDateList: deliveredList,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Utils.setheight(47, context),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xff000000)),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    elevation: 1,
                    minimumSize: Size(308, 47),
                    backgroundColor: Colors.white),
                child: const Text(
                  'View Order Details',
                  style: TextStyle(
                    color: Color(0xff563E1F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: Utils.setheight(24, context),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34)),
                    elevation: 1,
                    minimumSize: Size(308, 47),
                    backgroundColor: Color(0xffE4E4E4)),
                child: const Text(
                  'Back To Home',
                  style: TextStyle(
                    color: Color(0xff0B0B0B),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
