import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/buying_product_page.dart';

class SellerEquipmentPage extends StatefulWidget {
  const SellerEquipmentPage({Key? key}) : super(key: key);

  @override
  State<SellerEquipmentPage> createState() => _SellerEquipmentPageState();
}

class _SellerEquipmentPageState extends State<SellerEquipmentPage> {
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
          "Sell Equipments",
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
                'Add Equipment Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff563E1F)),
              ),
              SizedBox(
                height: 12,
              ),
               TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Equipment Type*',
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
                  hintText: 'Brand*',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,

                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Model*',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Drive Modes*',
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
                  hintText: 'Power in HP',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mileage per Litre',
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
                    hintText: 'Additional information',
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
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/tomato1.png')),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        right: -10,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Color(0xffE26B26),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/tomato1.png')),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        right: -10,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Color(0xffE26B26),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/tomato1.png')),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        right: -10,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: Color(0xffE26B26),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
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
              const Text(
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => DemoPage(),
                        //     ));
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
                              builder: (context) => BuyingProductPage(),
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
