// import 'package:animated_qr_code_scanner/animated_qr_code_scanner.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'dart:ui';
// import 'package:flutter/rendering.dart';

// import 'package:animated_qr_code_scanner/AnimatedQRViewController.dart';
// import 'package:animated_qr_code_scanner/AnimatedSquare.dart';
// import 'package:animated_qr_code_scanner/BitMatrix.dart';
// import 'package:animated_qr_code_scanner/Detector.dart';
// import 'package:animated_qr_code_scanner/PerspectiveTransform.dart';

// class GeneratePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => GeneratePageState();
// }

// class GeneratePageState extends State<GeneratePage> {
//   String qrData =
//       "https://github.com/neon97"; // already generated qr code when the page opens

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('QR Code Generator'),
//           actions: <Widget>[],
//         ),
//         body: SingleChildScrollView(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   QrImage(
//                     //plce where the QR Image will be shown
//                     data: qrData,
//                   ),
//                   SizedBox(
//                     height: 40.0,
//                   ),
//                   Text(
//                     "New QR Link Generator",
//                     style: TextStyle(fontSize: 20.0),
//                   ),
//                   TextField(
//                     controller: qrdataFeed,
//                     decoration: InputDecoration(
//                       hintText: "Input your link or data",
//                     ),
//                   ),
//                   AnimatedQRView(
//                       squareColor: Colors.green.withOpacity(0.25),
//                       animationDuration: const Duration(milliseconds: 600),
//                       onScanBeforeAnimation: (String str) {
//                         print('Callback at the beginning of animation: $str');
//                       },
//                       onScan: (String str) async {
//                         await showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             title: Text('Payment successful!'),
//                             actions: [
//                               FlatButton(
//                                 child: const Text('OK'),
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                   Navigator.of(context).pop();
//                                   Navigator.of(context).push(
//                                     MaterialPageRoute(
//                                       builder: (context) => Scaffold(
//                                         body: Align(
//                                           alignment: Alignment.center,
//                                           child: Text('$str'),
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
//                                 child: FlatButton(
//                                   padding: EdgeInsets.all(15.0),
//                                   onPressed: () async {
//                                     if (qrdataFeed.text.isEmpty) {
//                                       //a little validation for the textfield
//                                       setState(() {
//                                         qrData = "";
//                                       });
//                                     } else {
//                                       setState(() {
//                                         qrData = qrdataFeed.text;
//                                       });
//                                     }
//                                   },
//                                   child: Text(
//                                     "Generate QR",
//                                     style: TextStyle(
//                                         color: Colors.blue,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   shape: RoundedRectangleBorder(
//                                       side: BorderSide(
//                                           color: Colors.blue, width: 3.0),
//                                       borderRadius:
//                                           BorderRadius.circular(20.0)),
//                                 ),
//                               )
//                             ],
//                           ),
//                         );
//                       })
//                 ])));
//   }

//   final qrdataFeed = TextEditingController();
// }
