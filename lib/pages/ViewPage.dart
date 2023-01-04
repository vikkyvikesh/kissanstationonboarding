import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/SelectkissanstationPage.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Responses",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff563E1F)),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 26,
                width: 131,
                decoration: BoxDecoration(
                  color: Color(0xffFFEACD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Total Responses: 23',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB26900),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 34,),
              CustomCard(
                imageurl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                name: 'Floyd Miles',
                DateText: '24 Spet 2022  | 6:40 PM',
              ),
              SizedBox(height: 34,),
              CustomCard(
                imageurl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                name: 'Vikesh kumar',
                DateText: '24 Spet 2022  | 6:40 PM',
              ),
              SizedBox(height: 34,),
              CustomCard(
                imageurl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                name: 'ankit singh',
                DateText: '24 Spet 2022  | 6:40 PM',
              ),
              SizedBox(height: 34,),
              CustomCard(
                imageurl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                name: 'Lokesh Suthar',
                DateText: '24 Spet 2022  | 6:40 PM',
              ),
              SizedBox(height: 34,),
              CustomCard(
                imageurl:
                    'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc',
                name: 'Divyam Sharma',
                DateText: '24 Spet 2022  | 6:40 PM',
              ), SizedBox(height: 34,),
              CustomCard(
                imageurl:
                    'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc',
                name: 'Divyam Sharma',
                DateText: '24 Spet 2022  | 6:40 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String name;
  final String DateText;
  final String imageurl;
  CustomCard(
      {Key? key,
      required this.name,
      required this.DateText,
      required this.imageurl})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.network(widget.imageurl),
            ),
            SizedBox(
              width: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff341D10),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  widget.DateText,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7D7D7D)),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SelectkissanstationPage(),));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      // width: 5.0,
                      color: Color(0xffE26B26),
                    ),
                    borderRadius: BorderRadius.circular(34)),
                elevation: 0,
                minimumSize: Size(28, 47),
                primary: Colors.white,
              ),
              child: const Text(
                'View',
                style: TextStyle(
                  color: Color(0xffE26B26),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
