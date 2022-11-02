import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threeemsui/screens/seemorecharities.dart';
import 'package:threeemsui/screens/splashscreen.dart';
import 'package:threeemsui/themes.dart';

class ChitSucessPaidPage extends StatefulWidget {
  const ChitSucessPaidPage({Key? key}) : super(key: key);

  @override
  State<ChitSucessPaidPage> createState() => _ChitSucessPaidPageState();
}

class _ChitSucessPaidPageState extends State<ChitSucessPaidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Text("You have succesfully paid",
              style: TextStyle(fontSize: scrWidth*0.041,fontFamily: 'Urbanist',fontWeight: FontWeight.w500),),
            SizedBox(height: scrHeight*0.015,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeMoreCharities()));
              },
              child: Container(
                height: scrHeight*0.06,
                width: scrWidth*0.78,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(17),
                 color: primarycolor,
               ),child: Center(child: Text("Go to Chit Page",
                style: TextStyle(color: Colors.white,fontSize: scrWidth*0.041,fontFamily: 'Outfit',fontWeight: FontWeight.w500),)),),
            ),
            SizedBox(height: scrHeight*0.011,),
            Container(
              height: scrHeight*0.06,
              width: scrWidth*0.78,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: Color(0xffE6E6E6),width: 1)

              ),child: Center(child: Text("Go to home",
                style: TextStyle(color: Color(0xff888888),fontSize:  scrWidth*0.041,fontFamily: 'Outfit',fontWeight: FontWeight.w500))),),
            SizedBox(height: scrHeight*0.14,),
          ],
        ),

      ),
    );
  }
}
