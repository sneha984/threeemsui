import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


import 'package:flutter_svg/svg.dart';
import 'package:threeemsui/screens/splashscreen.dart';

import '../themes.dart';

class FundRaisingDashboard extends StatefulWidget {
  const FundRaisingDashboard({Key? key}) : super(key: key);

  @override
  State<FundRaisingDashboard> createState() => _FundRaisingDashboardState();
}

class _FundRaisingDashboardState extends State<FundRaisingDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: 369,
                  width:scrWidth,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffA1FFC9),
                          Color(0xffFFFFFF
                          ),
                        ],
                      )
                  ),
            ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only( top: scrHeight*0.095,
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child:  Padding(
                                padding: EdgeInsets.only(
                                    left: scrWidth*0.06,
                                    // bottom: scrHeight*0.02,
                                    right: scrWidth*0.04),
                                child:SvgPicture.asset("assets/arrow.svg",),
                              ),
                            ),
                            Text("Fundraise Dashboard",style: TextStyle(
                                fontSize: scrWidth*0.045,
                                color: Colors.black,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700),),
                            SizedBox(width: scrWidth*0.13,),
                            InkWell(
                              onTap: (){
                              },
                              child: Container(
                                height: scrHeight*0.035,
                                width: scrWidth * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: primarycolor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      size: 11,
                                      color: Colors.white,
                                    ),

                                    Text(
                                      "Create Chit",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: CreateChitFont,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Recent Charity",style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500),),
                          SizedBox(width: 60,),
                          Text("VIEW ALL",style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 95,
                          width: 315,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,

                        ),
                        child: Row(

                          children: [
                            SizedBox(width: 8,),
                            Stack(
                              children: [
                                Container(
                                  width: 105,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Fq34XkS4qJu18uu9U-VM0-KpLRQjH6EoMw&usqp=CAU"),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,

                                  ),
                                ),

                                Positioned(
                                  top: 50,
                                  bottom: 7,
                                  left: 5,
                                  right: 44,
                                  child:ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                      child: Container(

                                        child: Center(
                                          child: Text("Disaster",style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.black,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700),),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width: ,),
                            Column(
                              children: [
                                SizedBox(height: 11,),
                                Text("Urgent! Help the people in \nAssam ",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600),),
                                SizedBox(height: 20,),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // SizedBox(width: 10,),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 17),
                                      child: Container(
                                        width: 81,
                                        height: 19,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Color(0xffF14336),

                                        ),
                                        child: Center(
                                          child: Text("IN REVIEW",style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700),),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(width: 30,),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 65),
                                      child: SvgPicture.asset("assets/shareicon.svg",),
                                    ),

                                  ],
                                )


                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 30,right: 150),
                        child: Text("Recent Charity Progress",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          CircularPercentIndicator(
                            radius: 48,
                            percent: 0.5,
                            lineWidth: 10,
                            progressColor: primarycolor,
                            startAngle: 0,
                            center: Text("50%",style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25,fontFamily: 'Urbanist'),
                            ),
                            backgroundColor: Color(0xffE0E0E0),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Raised",style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500),),
                               SizedBox(height: 4,),

                              Text("₹0",style: TextStyle(
                                  fontSize: 18,
                                  color: primarycolor,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700),),
                               SizedBox(height: 4,),

                              Text("Out of ₹92,00,000 ",style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600),),
                              SizedBox(height: 24,),


                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 22,right: 240),
                        child: Text("Analytics",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500),),
                      ),
                      // TabBar(tabs:
                      // [
                      //   Container(
                      //     height: 33,
                      //     width: 80,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromRGBO(0, 0, 0, 0.05),
                      //       borderRadius: BorderRadius.circular(60),
                      //     ),
                      //     child: Text("Day",style: TextStyle(
                      //         fontSize: 14,
                      //         color: Color.fromRGBO(0, 0, 0, 0.3),
                      //         fontFamily: 'Poppins',
                      //         fontWeight: FontWeight.w400),),
                      //
                      //   ),
                      // ])

                    ],
                  ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
