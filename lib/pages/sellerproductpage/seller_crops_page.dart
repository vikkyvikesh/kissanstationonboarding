
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kissanstationonboarding/pages/demo.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_product_page1.dart';

class SellerCropsPage extends StatefulWidget {
  const SellerCropsPage({Key? key}) : super(key: key);

  @override
  State<SellerCropsPage> createState() => _SellerCropsPageState();
}

class _SellerCropsPageState extends State<SellerCropsPage> {
  late String? selected = '';
  late String? cropselected = '';
  late String? varityselected = '';
  late String? priceselectd = '';
  late String? quantityselected = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff585858),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Sell Crops",
          style: TextStyle(color: Color(0xffE26B26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add Crop Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff563E1F)),
              ),
              SizedBox(
                height: 12,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add Product Title',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Crop Type',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffFAA326),
                      ),
                      onPressed: () {
                        Container(
                          height: 15,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(),
                            color: Color(0xffF9F9F9),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Variety',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffFAA326),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Brand (optional)',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 112,
                child: TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Description',
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                height: 48,
                width: 151,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffFFF0DB),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/AddImage.png',
                      height: 23,
                      width: 24,
                    ),
                    Text(
                      'Add Image',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFAA326)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 26.50,
              ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ImageViewScreen(
                  //           image: _pickedImages[idx]),
                  //     ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, bottom: 30.0),
                  child: Container(
                    height: 65,
                    width: 65,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(9)),
                        ),
                    child: Image.asset('assets/tomato1.png'),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                  },
                  child: Icon(Icons.highlight_remove,color: Color(0xffE26B26),)),
            ],
          ),
              SizedBox(
                height: 42,
              ),
              Divider(
                thickness: 1,
                color: Color(0xffDEDEDE),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                'Avalible Quantity',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff563E1F)),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 41,
                // width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xffF4F4F4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA19DA1)),
                      ),
                      Container(
                        height: 43,
                        width: 94,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(30),
                            items: <String>['10kg', '20kg', '25kg', '50kg']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                  value: value, child: Text(value));
                            }).toList(),
                            onChanged: (v) {
                              setState(() {
                                quantityselected = v;
                              });
                            },
                            hint: quantityselected == ''
                                ? Text('Kilo')
                                : Text("$quantityselected"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Pricing Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff563E1F)),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 41,
                // width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xffF4F4F4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA19DA1)),
                      ),
                      Container(
                        height: 43,
                        width: 94,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(30),
                            items: <String>[
                              '100rs',
                              '2000rs',
                              '2500rs',
                              '5000rs'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                  value: value, child: Text(value));
                            }).toList(),
                            onChanged: (v) {
                              setState(() {
                                priceselectd = v;
                              });
                            },
                            hint: priceselectd == ''
                                ? Text('Kilo')
                                : Text("$priceselectd"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff563E1F),
                    ),
                  ),
                  Text(
                    'Add new Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xffE26B26),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 97,
                // width: 335,
                decoration: BoxDecoration(
                  color: Color(0xffFDFAF5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff563E1F)),
                      ),
                      SizedBox(
                        height: 13.50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Location (1).png',
                            color: Color(0xffCE9141),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            '227',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffCE9141)),
                          ),
                          Text(
                            'Muradpur,Uttar Pradesh 110049',
                            maxLines: 2,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffCE9141)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DemoPage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          elevation: 5,
                          minimumSize: Size(140, 42),
                          primary: Color(0xffA8A8A8)),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xffEEEEEE),
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
                              builder: (context) => SellerProductPage1(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(59)),
                          elevation: 5,
                          minimumSize: Size(177, 42),
                          primary: Color(0xffE26B26)),
                      child: const Text(
                        'Next',
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
      ),
    );
  }
}
