import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/carousel_page.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/cart_product_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class OrderProductPage extends StatefulWidget {
  const OrderProductPage({Key? key}) : super(key: key);

  @override
  State<OrderProductPage> createState() => _OrderProductPageState();
}

class _OrderProductPageState extends State<OrderProductPage> {
  final List<String> images = [
    'orderseeds.png',
    'orderseeds.png',
    'orderseeds.png',
  ];
  double ttlNoOfDrones = 00;
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff585858),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Back',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff434343)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>CarouselPage(),),);
              },
              icon: Icon(
                Icons.add_shopping_cart_outlined,
                color: Color(0xff585858),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: false,
                ),
                items: [
                  'orderseeds.png',
                  'orderseeds.png',
                  'orderseeds.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 375,
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F3F3),
                        ),
                        child: Image.asset(
                          'assets/orderseeds.png',

                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Garden Soil Mix",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff563E1F)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " -1 Kg",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7C7C)),
                    ),
                    // Spacer(),
                    Container(
                      height: 30,
                      // width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF6F6F6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            ttlNoOfDrones.toString(),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "₹150",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffE26B26)),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff040404)),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Made of organic poultry litter, the plant pellet fertilizer\nbr Made of organic poultry litter, the plant pellet fertilizer eathes life into the soil by adding in organic matter.It improves moisture retention and promotes the growth of beneficial microbes. ",
                      maxLines: 8,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff747474)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Seller Information",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff563E1F)),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF8EE),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xff858585).withOpacity(0.1)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/farmer.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Ram Prasad',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff563E1F)),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Color(0xffEEAC03),
                                      ),
                                      SizedBox(
                                        width: 4,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/Location (1).png",
                                        color: Color(0xffE26B26),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '227, Muradpur,Uttar Pradesh 110049',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff563E1F)),
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
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Ratings & Reviews",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff563E1F)),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '3.5',
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff563E1F)),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 30,
                                            color: Color(0xffEEAC03),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Based on 29 Reviews',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff8E8E8E)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              FittedBox(
                                child: Container(
                                  width: 200,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    reverse: false,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                          SizedBox(width: 4.0),
                                          Icon(Icons.star, color: Colors.orange),
                                          SizedBox(width: 8.0),
                                          LinearPercentIndicator(
                                            lineHeight: 2.0,
                                            // linearStrokeCap: LinearStrokeCap.roundAll,
                                            width:
                                                MediaQuery.of(context).size.width /
                                                    2.8,
                                            animation: true,
                                            animationDuration: 2500,
                                            percent: ratings[index],
                                            progressColor: Color(0xff18967D),
                                          ),
                                          Text(
                                            "${index + 2}",
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29.5,
                    ),
                    Text(
                      "Costumer Reviews (2)",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff563E1F)),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),side: BorderSide.none),

                              elevation: 0,
                              backgroundColor: Color(0xff18967D),
                              minimumSize: Size(
                                28,
                                14,
                              ),
                             ),
                          child: Row(
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)),
                              ),
                              Icon(
                                Icons.star_border,
                                size: 18,
                                color: Color(0xffFFFFFF),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 9,),
                        Text(
                          'Nice Product & Good quality',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8C8C8C)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 68.0),
                          child: Text(
                            'Musharif  | 29 Sep, 2022  ',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8C8C8C)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17,),
                    Divider(
                      thickness: 1,
                      color: Color(0xffC1C1C1),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),side: BorderSide.none),

                            elevation: 0,
                            backgroundColor: Color(0xffEB3327),
                            minimumSize: Size(
                              28,
                              14,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)),
                              ),
                              Icon(
                                Icons.star_border,
                                size: 18,
                                color: Color(0xffFFFFFF),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 9,),
                        Text(
                          'Bad quality',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8C8C8C)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 68.0),
                          child: Text(
                            'Deepa Sharma  | 01 Aug, 2022',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8C8C8C)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 53,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => DemoPage(),
                              //     ));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                elevation: 1,
                                minimumSize: Size(161, 47),
                                backgroundColor: Color(0xffEAEAEA)),
                            child: const Text(
                              'Add To Cart',
                              style: TextStyle(
                                color: Color(0xff777777),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CartProductPage(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(59)),
                                elevation: 1,
                                minimumSize: Size(161, 47),
                                backgroundColor: Color(0xffE26B26)),
                            child: const Text(
                              'Order Now',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
