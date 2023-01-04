import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/delivery_status_page.dart';

import '../utills/size.dart';

class OrderDeliveredPage extends StatelessWidget {
  const OrderDeliveredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: Color(0xff434343),
            ),
          )),
      body: Column(
        children: [
          SizedBox(
            height: Utils.setheight(300, context),
            child: Center(
              child: Image.asset("assets/roundedimage.png"),
            ),
          ),
          SizedBox(
            height: Utils.setheight(72, context),
            child: Center(
              child: Text(
                "           Congratulations!\nYour order has been placed.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff563F1F)),
              ),
            ),
          ),
          SizedBox(
            height: Utils.setheight(72, context),
            child: Center(
              child: Text(
                "You can track or manage your orders\n               in my orders section.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffABABAB)),
              ),
            ),
          ),
          SizedBox(
            height: Utils.setheight(72, context),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 115.0),
                child: Row(
                  children: [
                    Text(
                      "Order ID:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffABABAB)),
                    ),
                    Text(
                      "#XL54DE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff303030)),

                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Utils.setheight(20, context),),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryStatusPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                elevation: 1,
                minimumSize: Size(308, 47),
                backgroundColor: Color(0xffE26B26)),
            child: const Text(
              'Delivery Status',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: Utils.setheight(34, context),),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
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
    );
  }
}

// SizedBox(
// height: Utils.setheight(50, context),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// ),
// ],
// ),
// ),
