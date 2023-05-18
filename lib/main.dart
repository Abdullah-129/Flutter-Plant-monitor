import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:untitled4/uii_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Uii_Screen()
    );
  }
}
// class SleekSlider extends StatelessWidget {
//   Widget slider1 = SleekCircularSlider(
//     appearance: CircularSliderAppearance(
//       size: 200,
//       startAngle: 270,
//       angleRange: 360,
//       customWidths: CustomSliderWidths(
//         progressBarWidth: 10,
//       ),
//       customColors: CustomSliderColors(
//         hideShadow: true,
//         trackColor: Colors.red,
//         progressBarColor: Colors.redAccent,
//         shadowMaxOpacity: 20,
//       ),
//       infoProperties: InfoProperties(
//         topLabelText: 'Pomodoro',
//         topLabelStyle: TextStyle(
//           color: Colors.red,
//           fontSize: 20,
//         ),
//       ),
//     ),
//     initialValue: 0,
//     onChange: (double value){
//       print(value);
//     },
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red[50],
//       body: Center(
//         child: Column(
//           children: [
//             Expanded(
//               child: slider1,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
