
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_crops_page.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_equipment_page.dart';

class SellerProductPage1 extends StatelessWidget {
  const SellerProductPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
        title: const Text(
          "Sell Products",
          style: TextStyle(color: Color(0xffE26B26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What do you want to sell ?',
                style: TextStyle(
                    color: Color(0xff563E1F),
                    fontWeight: FontWeight.w500,
                    fontSize: 17.57),
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SellerProductCard(
                      assetImage: 'assets/vegetable.png',
                      text: 'All Crops',
                      containerColor: Color(0xffFFFFFF),
                      textColor: Color(0xff474747),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      print('vikky');
                    },
                    child: Ink(
                      child: SellerProductCard(
                        text: "Animal",
                        assetImage: "assets/Animal.png",
                        containerColor: Color(0xffFFFFFF),
                        textColor: Color(0xff563E1F),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SellerProductCard(
                      assetImage: 'assets/AgriInputs.png',
                      text: 'Agri Inputs',
                      containerColor: Color(0xffFFFFFF),
                      textColor: Color(0xff563E1F),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SellerProductCard(
                      text: "Seeds",
                      assetImage: "assets/Seeds.png",
                      containerColor: Color(0xffFFFFFF),
                      textColor: Color(0xff563E1F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SellerEquipmentPage(),
                          ));
                    },
                    child: SellerProductCard(
                      assetImage: 'assets/Equipment.png',
                      text: 'Equipments',
                      containerColor: Color(0xffFFF3D7),
                      textColor: Color(0xffE26B26),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    focusColor: Colors.red,
                    onTap: () {},
                    child: SellerProductCard(
                      text: "Others",
                      assetImage: "assets/Help.png",
                      containerColor: Color(0xffFFFFFF),
                      textColor: Color(0xff563E1F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 105,
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SellerEquipmentPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      elevation: 5,
                      minimumSize: Size(211, 48),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SellerProductCard extends StatefulWidget {
  const SellerProductCard(
      {Key? key,
      required this.text,
      required this.assetImage,
      required this.containerColor,
      required this.textColor})
      : super(key: key);
  final String text;
  final String assetImage;
  final Color containerColor;
  final Color textColor;

  @override
  State<SellerProductCard> createState() => _SellerProductCardState();
}

class _SellerProductCardState extends State<SellerProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      width: 124,
      decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              spreadRadius: 0.5,
              offset: Offset(2, 2),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(widget.assetImage),
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
