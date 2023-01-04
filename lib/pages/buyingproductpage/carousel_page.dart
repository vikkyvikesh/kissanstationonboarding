// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class CarouselPage extends StatefulWidget {
//   const CarouselPage({Key? key}) : super(key: key);
//
//   @override
//   State<CarouselPage> createState() => _CarouselPageState();
// }
//
// class _CarouselPageState extends State<CarouselPage> {
//   List imageSliders = [
//     'assets/orderseeds.png',
//     'assets/plantseed.png',
//     'assets/orderseeds.png',
//     'assets/orderseeds.png',
//     'assets/orderseeds.png',
//     'assets/orderseeds.png',
//     'assets/orderseeds.png',
//     'assets/plantseed.png',
//     'assets/orderseeds.png',
//     'assets/plantseed.png',
//   ];
//
//   get activeIndex => 0;
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       systemNavigationBarColor: Color(0xFF000000),
//       systemNavigationBarIconBrightness: Brightness.dark,
//       systemNavigationBarDividerColor: null,
//       statusBarColor: Color(0xFFFFFFFF),
//       statusBarIconBrightness: Brightness.dark,
//       statusBarBrightness: Brightness.dark,
//     ));
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         leading: Padding(
//           padding: const EdgeInsets.only(
//             left: 20,
//             top: 10,
//           ),
//           child: IconButton(
//             icon: Icon(
//               Icons.keyboard_backspace_sharp,
//               size: 35,
//               color: Colors.grey[600],
//             ),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 0,
//               top: 10,
//             ),
//             child: IconButton(
//               icon: const Icon(
//                 Icons.search_outlined,
//                 color: Colors.black,
//                 size: 30,
//               ),
//               onPressed: () {},
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 0,
//               top: 10,
//               right: 20,
//             ),
//             child: IconButton(
//               icon: Stack(
//                 children: [
//                   // if (_newNotification)
//                   Positioned(
//                     right: 1,
//                     top: 1,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.red),
//                       width: 20.0 / 2.5,
//                       height: 20.0 / 2.5,
//                     ),
//                   ),
//                   Icon(
//                     Icons.notifications_none_outlined,
//                     color: Colors.black,
//                     size: 30,
//                   )
//                 ],
//               ),
//               onPressed: () {},
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//               child: CarouselSlider(
//             options: CarouselOptions(
//                 height: 200,
//                 viewportFraction: .6,
//                 aspectRatio: 1.2,
//                 enlargeCenterPage: true,
//                 scrollDirection: Axis.horizontal,
//                 autoPlay: true,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     activeIndex = index;
//                   });
//                 }),
//             items: [for (var item in imageSliders) Image.asset(item)],
//           )),
//           Positioned(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: imageSliders.map((url) {
//                 int index = imageSliders.indexOf(url);
//                 return Container(
//                   width: 8.0,
//                   height: 8.0,
//                   margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: activeIndex == index
//                         ? Colors.blue
//                         : Color.fromRGBO(0, 0, 0, 0.4),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
