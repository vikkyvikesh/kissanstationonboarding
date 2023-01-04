import 'package:flutter/material.dart';
import 'package:kissanstationonboarding/pages/utills/size.dart';

class CancelOrderPage extends StatefulWidget {
  const CancelOrderPage({Key? key}) : super(key: key);

  @override
  State<CancelOrderPage> createState() => _CancelOrderPageState();
}

class _CancelOrderPageState extends State<CancelOrderPage> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  final TextEditingController _additionalcommentContoller = TextEditingController();
  // Map<String, bool> values = {
  //   'Changed my mind': false,
  //   'Order placed by mistake ': false,
  //   'Wrong shipping address': false,
  //   'Other': false,
  // };
  //
  // var tmpArray = [];
  //
  // getCheckboxItems(){
  //
  //   values.forEach((key, value) {
  //     if(value == true)
  //     {
  //       tmpArray.add(key);
  //     }
  //   });
  //
  //   // Printing all selected items on Terminal screen.
  //   print(tmpArray);
  //   // Here you will get all your selected Checkbox items.
  //
  //   // Clear array after use.
  //   tmpArray.clear();
  // }
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
        centerTitle: true,
        title: Text(
          'Cancel Order',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffE26B26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please select a reason to cancel your order:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3d3d3d)),
              ),
              SizedBox(height: Utils.setheight(20, context),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "Changed my mind",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3d3d3d)),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                  Text(
                    "Order placed by mistake ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3d3d3d)),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                  Text(
                    "Wrong shipping address",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3d3d3d)),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked3 = value!;
                      });
                    },
                  ),
                  Text(
                    "Other",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3d3d3d)),
                  ),
                ],
              ),
              SizedBox(height: Utils.setheight(30, context),),
              Text(
                "Additional Comments",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3d3d3d)),
              ),
              SizedBox(height: Utils.setheight(13, context),),
              Container(
                decoration: BoxDecoration(
                ),
                child: TextFormField(
                  controller: _additionalcommentContoller,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),),),
                      errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffC0C0C0),))
                  ),
                ),
              ),
              SizedBox(height: Utils.setheight(142, context),),

              Row(
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
                        elevation: 0,
                        minimumSize: Size(155, 47),
                        backgroundColor: Colors.white,),
                    child: const Text(
                      'Don’t Cancel ',
                      style: TextStyle(
                        color: Color(0xffA1A1A1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => CartProductPage(),
                      //     ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(59)),
                        elevation: 1,
                        minimumSize: Size(155, 47),
                        backgroundColor: Color(0xffE22631)),
                    child: const Text(
                      'Cancel Order',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
//   child: ListView(
//     children: values.keys.map((String key) {
//       return CheckboxListTile(
//         title: Text(key),
//         value: values[key],
//         activeColor: Colors.pink,
//         checkColor: Colors.white,
//         onChanged: (bool? value) {
//           setState(() {
//             values[key] = value!;
//           });
//         },
//       );
//     }).toList(),
//   ),
// ),
