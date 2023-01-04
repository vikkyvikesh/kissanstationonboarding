

import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/order_card.dart';

class SelectkissanstationPage extends StatelessWidget {
  const SelectkissanstationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Choose Your Kisaan Station",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff563E1F)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const OrderCardPage(),));
              },
                child: TransportCard(
                    name: 'vikesh',
                    DateText: '2 km',
                    imageurl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              ),
              SizedBox(
                height: 10,
              ),
              TransportCard(
                  name: 'vikesh',
                  DateText: '2 km',
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              SizedBox(
                height: 10,
              ),
              TransportCard(
                  name: 'vikesh',
                  DateText: '2 km',
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              SizedBox(
                height: 10,
              ),
              TransportCard(
                  name: 'vikesh',
                  DateText: '2 km',
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              SizedBox(
                height: 10,
              ),
              TransportCard(
                  name: 'vikesh',
                  DateText: '2 km',
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
              SizedBox(
                height: 10,
              ),
              TransportCard(
                  name: 'vikesh',
                  DateText: '2 km',
                  imageurl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportCard extends StatefulWidget {
  final String name;
  final String DateText;
  final String imageurl;
  TransportCard(
      {Key? key,
      required this.name,
      required this.DateText,
      required this.imageurl})
      : super(key: key);

  @override
  State<TransportCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<TransportCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 79,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(widget.imageurl),
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
            Checkbox  (
              checkColor: Colors.white,
              value: isChecked,
              onChanged: ( newBool) {
                setState(() {
                  isChecked = newBool!;
                  if(newBool){
                    print("selected");
                  }else{
                    print("Not Selectedb");
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
