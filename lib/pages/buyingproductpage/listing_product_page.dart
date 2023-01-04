import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/order_product_page.dart';

class ListingProductPage extends StatefulWidget {
  const ListingProductPage({Key? key}) : super(key: key);

  @override
  State<ListingProductPage> createState() => _ListingProductPageState();
}

class _ListingProductPageState extends State<ListingProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Fertilisers",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffE26B26)),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff585858), // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Color(0xff563F1F),
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: Color(0xff434343),
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderProductPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff858585).withOpacity(0.1)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 23, top: 13, bottom: 46),
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
                                      'Plant Fertiliser Pellets',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff563E1F)),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xffEEAC03),
                                    ),
                                    Text(
                                      '3.9',
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
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 20),
                                    child: Text(
                                      '₹150/Kg',
                                      style:
                                          TextStyle(color: Color(0xffE26B26)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/admin.png",
                                    ),
                                    SizedBox(
                                      width: 5,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Ram Prasad Sharma',
                                        style: TextStyle(
                                            // overflow: TextOverflow.ellipsis,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff606060)),
                                      ),
                                    ),
                                    // Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 8.0, right: 8),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(26),
                                                side: BorderSide.none),
                                            elevation: 0,
                                            minimumSize: Size(
                                              40,
                                              35,
                                            ),
                                            backgroundColor: Color(0xffFFF3D7)),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.add_shopping_cart,
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
                ),
              );
            }),
      ),
    );
  }
}
