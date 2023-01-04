
import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/utills/size.dart';

import 'listing_product_page.dart';

class BuyingProductPage extends StatelessWidget {
  const BuyingProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xff563E1F),
            ), onPressed: () {

          },
          ),
          title: const Text(
            "My Station",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffE26B26)),
          ),
          
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),side: BorderSide.none),

                    elevation: 0,
                    minimumSize: Size(
                      40,
                      29,
                    ),
                    backgroundColor: Color(0xffFFF3D7)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xffE26B26),
                    ),
                    Text(
                      "sell",
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffF0F0F0),
                  ),
                  // width: 335,
                  child: Row(children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                elevation: 1,
                                minimumSize: Size(166, 49),
                                backgroundColor: Color(0xffEA7734)),
                            child: Text(
                              "PRODUCT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ))),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 0,
                            minimumSize: Size(166, 47),
                            backgroundColor: Color(0xffF0F0F0)),
                        child: Text(
                          "SERVICE",
                          style: TextStyle(
                              color: Color(0xff636363),
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: Utils.setheight(24, context),
                ),
                SizedBox(
                  height: Utils.setheight(47, context),
                  width: Utils.setwidth(336, context),
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.none,
                      ),
                    ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Color(0xffD9D9D9).withOpacity(0.3),),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      prefixIcon: Icon(Icons.search,color: Color(0xffB8AFA3)),
                      hintText: 'Search Products...',
                      suffixIcon: Icon(Icons.keyboard_voice_sharp,color: Color(0xff200E32)),
                    ),
                  ),
                ),
                SizedBox(
                  height: Utils.setheight(24, context),
                ),
                Container(
                  height: 262,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(width: 1,color: Color(0xffD8D8D8)),
                    // color: Color(0xffD8D8D8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product Categories",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff563E1F)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffE26B26)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ListingProductPage(),
                                    ));
                              },
                              child: Column(
                                children: [
                                  Image.asset('assets/Fertiliser.png',fit: BoxFit.cover,),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Text(
                                    'Fertilisers',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff515151)),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset('assets/Seeds.png',),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'Seeds',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/vegetable1.png'),
                                SizedBox(
                                  height: 11,
                                ),
                                const Text(
                                  'Vegetables',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/fibers.png'),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'Fibers',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/tea.png'),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'Tea',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/fruit.png'),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'Fruits',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Column(
                                children: [
                                  Image.asset('assets/diaries.png'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Text(
                                    'Diary',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff515151)),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset('assets/poultry.png'),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  'Poultry',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff515151)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Top Products',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff563E1F)),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  // height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: Color(0xff858585).withOpacity(0.1)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 23,top: 13,bottom: 46),
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
                                  padding: const EdgeInsets.only(left: 16,bottom: 20),
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
                                    padding: const EdgeInsets.only(bottom: 8.0,right: 8),
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
                                          primary: Color(0xffFFF3D7)),
                                      child: Row(
                                        children: [
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
                const SizedBox(height: 9,),
            Container(
              // height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5,
                    color: Color(0xff8585851C).withOpacity(0.1),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 23,top: 13,bottom: 46),
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
                              padding: const EdgeInsets.only(left: 16,bottom: 20),
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
                                padding: const EdgeInsets.only(bottom: 8.0,right: 8),
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
                                      primary: Color(0xffFFF3D7)),
                                  child: Row(
                                    children: [
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
              ],
            ),
          ),
        ));
  }
}