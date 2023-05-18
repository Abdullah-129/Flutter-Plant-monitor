import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Uii_Screen extends StatefulWidget {
  const Uii_Screen({Key? key}) : super(key: key);

  @override
  State<Uii_Screen> createState() => _Uii_ScreenState();
}

class _Uii_ScreenState extends State<Uii_Screen> {

  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      customWidths: CustomSliderWidths(progressBarWidth: 5),

      customColors: CustomSliderColors(
          trackColor: Colors.grey,progressBarColors:
      [Colors.cyan,Colors.cyan,],
          shadowMaxOpacity: 50.0),
      infoProperties: InfoProperties(topLabelText: 'running...'),
    ),

    initialValue: 0,
    onChange: (double value){
      print(value);
    },
  );

  Widget slider1 = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      customWidths: CustomSliderWidths(progressBarWidth: 5),
      customColors: CustomSliderColors(
          trackColor: Colors.grey,progressBarColors:
      [Colors.pink.shade300,Colors.pink.shade300,],
      shadowMaxOpacity: 10.0),
      infoProperties: InfoProperties(topLabelText: 'running...'),
    ),
    initialValue: 0,
    onChange: (double value){
      print(value);
    },
  );

  Widget slider2 = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      customWidths: CustomSliderWidths(progressBarWidth: 5),
      customColors: CustomSliderColors(
          trackColor: Colors.grey,progressBarColors:
      [Colors.green,Colors.green,],
          shadowMaxOpacity: 10.0),
      infoProperties: InfoProperties(topLabelText: 'running...'),
    ),
    initialValue: 0,
    onChange: (double value){
      print(value);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Quickstart Device',style: TextStyle(color: Colors.black),),

        actions: [
          InkWell(
            onTap: (){

            },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_horiz_rounded,color: Colors.black,),
              )
          )
        ],
      ),

      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 142,right: 40,left: 30),
          child: Text('Soil Mositure                              Temperature'),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 10,left: 145),
        //   child: Text('Temperature'),
        // ),
        Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15,left: 43),
              child: slider,
            ),
            SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 15,),
              child: slider1,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 120,left: 56),
            //   child: Text('0 '),
            // ),
          ],

        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 55),
              child: Text('0'),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text('100'),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Text('0'),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 105),
              child: Text('50'),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Humidity'),
        ),


        Row(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(top:10,left: 115),
              child: slider2,
            )),

          ],

        ),
    // SizedBox(height: 5,),
     Row(
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 43),
           child: Text('light'),
         ),

         Padding(
           padding: const EdgeInsets.only(left: 108),
           child: Text('pump'),
         ),
         
         Padding(
           padding: const EdgeInsets.only(left: 102),
           child: Text('Fan'),
         )

       ],
     ),

     SizedBox(height: 10,),
     Column(
       children: [
         Row(
           children: [
             Expanded(
               child: Container(
                   height: 80,

                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                       border: Border.all(
                           color: Colors.black
                       ),
                   ),
                 child: Center(child: Text('OFF',
                 style: TextStyle(fontSize: 20),
                 )),
               ),
             ),
             SizedBox(width: 10,),
             Expanded(
               child: Container(
                   height: 80,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                       border: Border.all(
                           color: Colors.black
                       )


                   ),
                 child: Center(child: Text('OFF',
                   style: TextStyle(fontSize: 20),
                 )),
               ),
             ),
             Expanded(
               child: Container(
                   height: 80,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                       border: Border.all(
                           color: Colors.black
                       )


                   ),
                 child: Center(child: Text('OFF',
                   style: TextStyle(fontSize: 20),
                 )),
               ),
             )
           ],
         )
       ],
     )


      ],),


       
       
       
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.indigo.shade900,
         onPressed: (){

         },
         child: Icon(Icons.build_outlined,
    color: Colors.white,
       ),


       )

    );
  }
}
