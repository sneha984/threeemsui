import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeemsui/screens/splashscreen.dart';

import '../themes.dart';
import 'fundraisingdashboard.dart';
import 'items.dart';

class SeeMoreCharities extends StatefulWidget {
  const SeeMoreCharities({Key? key}) : super(key: key);

  @override
  State<SeeMoreCharities> createState() => _SeeMoreCharitiesState();
}

class _SeeMoreCharitiesState extends State<SeeMoreCharities>with TickerProviderStateMixin {
  late  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);

    super.initState();
  }
  void _handleTabSelection() {
    setState(() {
    });
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  List<Items> _items = [
    Items(
      text:"Urgent! Help the people in Assam \nplease all do help",
      amount:"₹4,58,360.00",
      value:0.7,
      img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Fq34XkS4qJu18uu9U-VM0-KpLRQjH6EoMw&usqp=CAU",),
    Items(
      text:"Kerala is in critical situation \nHelp people those have the critical... ",
      amount:"₹15,25,639.00",
      value:0.3,
      img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXLC3Fp0lhoE2PAwuaYOOhTlfxxIFwXIgOA&usqp=CAU",),
    Items(
      text:"Urgent! Help the people in Assam \nplease all do help",
      amount:"₹4,58,360.00",
      value:0.5,
      img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Fq34XkS4qJu18uu9U-VM0-KpLRQjH6EoMw&usqp=CAU",),
    Items(
      text:"Kerala is in critical situation \nHelp people those have the critical... ",
      amount:"₹15,25,639.00",
      value:0.1,
      img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXLC3Fp0lhoE2PAwuaYOOhTlfxxIFwXIgOA&usqp=CAU",),
    Items(
      text:"Urgent! Help the people in Assam \nplease all do help",
      amount:"₹4,58,360.00",
      value:0.5,
      img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Fq34XkS4qJu18uu9U-VM0-KpLRQjH6EoMw&usqp=CAU",),

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: scrHeight*0.21,
            width: scrWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child:  Padding(
                        padding: EdgeInsets.only(
                            top: scrHeight*0.1,
                            left: scrWidth*0.07,
                            // bottom: scrHeight*0.02,
                            right: scrWidth*0.05),
                        child:SvgPicture.asset("assets/arrow.svg",),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: scrHeight*0.1,),
                      child: Text("Your Charities",style: TextStyle(
                          fontSize: scrWidth*0.045,
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700),),
                    )

                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(left: scrWidth*0.02,top: scrHeight*0.02),
                  child: Container(
                    height: scrHeight*0.042,
                    width: scrWidth*0.9,
                    decoration: BoxDecoration(
                        color: Color(0xffE9EEF3),

                        borderRadius: BorderRadius.circular(17)
                    ),
                    child: TextFormField(
                                decoration:  InputDecoration(
                                prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                top: scrHeight*0.01,
                                left: scrWidth*0.04,
                                bottom: scrHeight*0.01,
                                right: scrWidth*0.05),
                                child:SvgPicture.asset("assets/Vector (4).svg",),
                          ),
                          border: InputBorder.none,
                          hintText: "search here",
                          hintStyle: TextStyle(
                            fontFamily: 'Urbanist',fontWeight: FontWeight.w500,
                            fontSize: scrWidth*0.042,
                            color: Colors.grey,
                          )
                      ),
                      cursorColor: Colors.black,
                      cursorHeight: 20,
                      cursorWidth: 0.5,

                    ),
                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: scrHeight*0.017,),
          Row(
            children: [
              SizedBox(width: scrWidth*0.045,),
              Container(
                width: scrWidth*0.09,
                height: scrHeight*0.04,
                decoration: BoxDecoration(
                  color: primarycolor,
                  borderRadius: BorderRadius.circular(17.5)
                ),
                child:Padding(
                  padding:  EdgeInsets.only(top: scrHeight*0.01,bottom: scrHeight*0.01),
                  child: SvgPicture.asset("assets/Group (1).svg",),
                ),
              ),
              SizedBox(width: scrWidth*0.02,),

              Expanded(
                child: Container(
                  height: scrHeight*0.037,
                  child: TabBar(
                      isScrollable: true,
                      indicatorWeight: 0.05,
                      controller: _tabController,
                      unselectedLabelColor: Color(0xffA7A7A7),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Urbanist',fontSize: scrWidth*0.0385),
                      labelColor: Color(0xff0D0D0D),
                      labelStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Urbanist',fontSize: scrWidth*0.0385),
                      // indicatorPadding: EdgeInsets.only(bottom: scrHeight*0.00,left: scrWidth*0.00,right: scrWidth*0.00),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.5),
                          color: Color.fromRGBO(169, 255, 188, 0.4)),
                      indicatorSize: TabBarIndicatorSize.label,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.only(left: scrWidth*0.023,right: scrWidth*0.019),
                      //  indicatorWeight: 1,

                      tabs: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _tabController.index=0;
                            });
                          },
                          child: Tab(
                            child: Container(
                              height: scrHeight*0.038,
                              width: scrWidth*0.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.06), width: scrWidth*0.003)),
                              child: Row(
                                children: [
                                   SizedBox(width: scrWidth*0.03,),
                                  Text("Medical",),
                                   SizedBox(width: scrWidth*0.025,),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom: scrHeight*0.0035,top: scrHeight*0.0035),
                                    child: CircleAvatar(
                                      radius: 11,
                                      child: Text("12",style: tababrnumberFont),
                                      backgroundColor:(_tabController.index==0)? Colors.white:Color(0xffD4D4D4),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _tabController.index=1;


                            });
                          },
                          child: Tab(
                            child: Container(
                              height: scrHeight*0.038,
                              width: scrWidth*0.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.06),width: scrWidth*0.003)),
                              child: Row(
                                children: [
                                  SizedBox(width: scrWidth*0.03,),
                                  Text("Disaster"),
                                  SizedBox(width: scrWidth*0.02,),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom: scrHeight*0.0035,top: scrHeight*0.0035),
                                    child: CircleAvatar(

                                      radius: 11,
                                      child: Text("8",style:  tababrnumberFont),
                                      backgroundColor:(_tabController.index==1)? Colors.white:Color(0xffD4D4D4),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _tabController.index=2;
                            });
                          },
                          child: Tab(
                            child: Container(
                              height: scrHeight*0.038,
                              width: scrWidth*0.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.06), width: scrWidth*0.003)),
                              child: Row(
                                children: [
                                  SizedBox(width: scrWidth*0.02,),
                                  Text("Education"),
                                  SizedBox(width: scrWidth*0.007,),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom: scrHeight*0.0035,top: scrHeight*0.0035),
                                    child: CircleAvatar(

                                      radius: 11,
                                      child: Text("25",style: tababrnumberFont
                                      ),
                                      backgroundColor:(_tabController.index==2)? Colors.white:Color(0xffD4D4D4),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: scrHeight*0.001,),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.separated(
                  itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>FundRaisingDashboard()));
                      },
                      child: Row(
                        children: [
                          SizedBox(width: scrWidth*0.05,),
                          Container(
                            height: scrHeight*0.14,
                            width: scrWidth*0.285,
                            decoration: BoxDecoration(
                              // color: Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: NetworkImage(_items[index].img),fit: BoxFit.fill)
                            ),
                          ),
                          SizedBox(width: scrWidth*0.05,),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_items[index].text,style: TextStyle(
                                  fontSize:scrWidth*0.036,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600)),
                              SizedBox(height: scrHeight*0.03,),
                              Container(
                                height: scrHeight*0.004,
                                  width: scrWidth*0.55,
                                  child: LinearProgressIndicator(
                                    value: _items[index].value,
                                    backgroundColor: Color(0xffE9F6FF),
                                    color: Color(0xff343434),
                                  )
                              ),
                              SizedBox(height: scrHeight*0.024,),
                              Text(_items[index].amount,style: TextStyle(
                                  fontSize:scrWidth*0.039,
                                  color: primarycolor,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600),)



                            ],
                          )
                        ],
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(height: scrHeight*0.028,);
                },
                  ),
                Container(
                  child: Text("dkf"),

                ),
                Container(
                  child: Text("d"),

                ),
              ],
            ),
          )




        ],
      ),

    );
  }
}
