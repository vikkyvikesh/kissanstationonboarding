import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/select_payment_page.dart';

import '../utills/size.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({Key? key}) : super(key: key);

  @override
  State<SelectAddressPage> createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _housenoController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  @override
  void Dispose() {
    _stateController.dispose();
    _districtController.dispose();
    _pincodeController.dispose();
    _areaController.dispose();
    _housenoController.dispose();
    _landmarkController.dispose();
    super.dispose();
  }

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
        title: Text(
          'Select Address',
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
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 30),
                child: Row(
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
                          Icons.circle_rounded,
                          color: Color(0xffE26B26),
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
              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  "Enter Address Details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Utils.setheight(42, context),
                width: Utils.setwidth(335, context),
                child: TextFormField(
                  controller: _stateController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color(0xffD9D9D9).withOpacity(0.3),),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'State',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    height: Utils.setheight(42, context),
                    width: Utils.setwidth(152, context),
                    child: TextFormField(
                      controller: _districtController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color(0xffF4F4F4)),
                borderRadius: BorderRadius.circular(8),
              ),
                        hintText: 'District',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 42,
                    width: 152,
                    child: TextFormField(
                      controller: _pincodeController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: Color(0xffF4F4F4),),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Pin Code',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Utils.setheight(42, context),
                width: Utils.setwidth(335, context),
                child: TextFormField(
                  controller: _areaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color(0xffF4F4F4),),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Area',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Utils.setheight(42, context),
                width: Utils.setwidth(335, context),
                child: TextFormField(
                  controller: _housenoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color(0xffF4F4F4),),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'House No',
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Utils.setheight(42, context),
                width: Utils.setwidth(335, context),
                child: TextFormField(
                  controller: _landmarkController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color(0xffF4F4F4),),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Landmark(Optional)',
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Location Type",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2D2D2D)),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    height: Utils.setheight(35, context),
                    width: Utils.setwidth(60, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffFFF3D7)),
                    child: Center(
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE26B26)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: Utils.setheight(35, context),
                    width: Utils.setwidth(60, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF9F9F9)),
                    child: Center(
                      child: Text(
                        "Work",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA19DA1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: Utils.setheight(35, context),
                    width: Utils.setwidth(60, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF9F9F9)),
                    child: Center(
                      child: Text(
                        "Office",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA19DA1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: Utils.setheight(35, context),
                    width: Utils.setwidth(60, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF9F9F9)),
                    child: Center(
                      child: Text(
                        "Others",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffA19DA1)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Utils.setheight(80, context),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectPaymentPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      elevation: 1,
                      minimumSize: Size(221, 47),
                      backgroundColor: Color(0xffE26B26)),
                  child: const Text(
                    'Save Address',
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
