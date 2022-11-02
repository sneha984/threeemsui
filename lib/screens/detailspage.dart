import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeemsui/screens/splashscreen.dart';

import '../themes.dart';
import 'loginpage.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
              padding: EdgeInsets.only(top: scrHeight*0.05,left: scrWidth*0.03,bottom: scrHeight*0.008),
              child:SvgPicture.asset("assets/arrow.svg",),

          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: scrWidth*0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: scrHeight*0.008,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enter your details here",style:  TextStyle(fontFamily: 'Outfit',
                    fontWeight: FontWeight.w600,
                    fontSize: scrWidth*0.05
                ),),
                SizedBox(height: scrHeight*0.008,),

                Text("we'll send you a 6 digit OTP on your \nmobile number for verification",style: TextStyle(
                    fontFamily: 'Outfit',fontWeight: FontWeight.w400,fontSize: scrWidth*0.035,color: Color(0xff000000).withOpacity(0.5)
                ),),

              ],
            ),
            SizedBox(height: scrHeight*0.02,),

            Row(
              children: [
                Text("Username",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontWeight: FontWeight.w400,fontFamily: 'Outfit',fontSize: scrWidth*0.039
            )),
                Padding(
                  padding:  EdgeInsets.only(left: scrWidth*0.02),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: scrWidth*0.07,vertical: scrHeight*0.01),

                    height: scrHeight*0.05,
                    width: scrWidth*0.66,
                    decoration: BoxDecoration(
                        color: Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: TextFormField(
                      // controller: _passwordcontroller,
                      decoration:  InputDecoration(
                          border: InputBorder.none,
                          hintText: "username",
                          hintStyle: TextStyle(
                             fontSize: scrWidth*0.039,
                            color: Colors.grey,
                          )
                      ),
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      cursorWidth: 0.5,

                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: scrHeight*0.014,),

            Row(
              children: [
                Text("Email",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontWeight: FontWeight.w400,fontFamily: 'Outfit',fontSize: scrWidth*0.039),),
                Padding(
                  padding:  EdgeInsets.only(left: scrWidth*0.1),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: scrWidth*0.07,vertical: scrHeight*0.01),
                    height: scrHeight*0.05,
                    width: scrWidth*0.66,
                    decoration: BoxDecoration(
                        color: Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: TextFormField(
                      // controller: _passwordcontroller,
                      decoration:  InputDecoration(
                          border: InputBorder.none,
                          hintText: "email",
                          hintStyle: TextStyle(
                            fontSize: scrWidth*0.039,
                            color: Colors.grey,
                          )
                      ),
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      cursorWidth: 0.5,

                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: scrHeight*0.04,),
            GestureDetector(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Container(

                height: scrHeight*0.055,
                width: scrWidth*0.87,
                decoration: BoxDecoration(
                  color:primarycolor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child:  Text(
                    "CONTINUE",
                    style: style
                  ),
                ),
              ),
            ),
            SizedBox(height: scrHeight*0.02,),



          ],
        ),
      ),

    );
  }
}
