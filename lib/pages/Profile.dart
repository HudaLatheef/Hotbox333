import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/ManageProfile.dart';
import 'Cart.dart';
import 'MyHomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Profile extends StatefulWidget {
  
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isEnabled = false;
bool isDisabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height:1.20.sh,
          color: Colors.grey[200],
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300]
                ),
                height: 0.3.sh,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.grey[500],
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Profile',
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[800],),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.grey[800],
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 0.110.sh,
                            width:0.2.sw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage("assets/profile4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmed Elokle',
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[800], fontSize: 14.sp),
                                ),
                                Text(
                                  'am65769@gmail.com',
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[800], fontSize: 14.sp),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 150,
                  left: 10,
                  right: 10,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  children: [
                                    IconButton(
                                  icon: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[900],
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.deepOrange[900])),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.delivery_dining,
                                        color: Colors.white,
                                        size: 23.sp,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()),
                                    );
                                  },
                                ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Container(
                                        height:  0.07.sh,
                                        width: 0.17.sw,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'My all\nOrders',
                                              style:
                                                  GoogleFonts.roboto(
                                                      color: Colors.grey[800],
                                                      fontSize: 13.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                               ]),
                              Column(children: [
                                IconButton(
                                  icon: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.deepOrange[900])),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.card_giftcard_outlined,
                                        color: Colors.deepOrange[900],
                                        size: 23.sp,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()),
                                    );
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Container(
                                    height: 0.07.sh,
                                    width:  0.17.sw,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Offer &\npromos',
                                            style: GoogleFonts.roboto(
                                                fontSize: 13.sp,
                                                color: Colors.grey[800])),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                              Column(children: [
                                IconButton(
                                  icon: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.deepOrange[900])),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.deepOrange[900],
                                        size: 23.sp,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()),
                                    );
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Container(
                                    height: 0.07.sh,
                                    width: 0.17.sw,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Delivery\nAddress',
                                            style: GoogleFonts.roboto(
                                                fontSize: 13.sp,
                                                color: Colors.grey[800])),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('My Account',style: GoogleFonts.roboto(color: Colors.grey[600],fontSize: 15.sp,fontWeight: FontWeight.w800)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.account_circle_outlined,color: Colors.deepOrange[900],size: 22,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text('Manage Profile',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                          ),
                                        ],
                                      ),
                                      IconButton(icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 17.sp,), onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ManageProfile()),
                                    );
                                  },)

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.credit_card_outlined,color: Colors.deepOrange[900],size: 24.sp,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text('Payment',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 18.sp,)

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text('Notification',style: GoogleFonts.roboto(color: Colors.grey[600],fontSize: 15.sp,fontWeight: FontWeight.w800)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.account_circle_outlined,color: Colors.deepOrange[900],size: 24.sp,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text('Notification',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                          ),
                                        ],
                                      ),
                                      Switch(
                                        activeColor: Colors.deepOrange[900],
                                  value: isDisabled,
                                  onChanged: (check) {
                                    setState(() {
                                      isDisabled = check;
                                    });
                                  }),

                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.credit_card_outlined,color: Colors.deepOrange[900],size: 24.sp,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4),
                                          child: Text('Promotional Notification',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      activeColor: Colors.deepOrange[900],
                                value: isDisabled,
                                onChanged: (check) {
                                  setState(() {
                                    isDisabled = check;
                                  });
                                }),

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text('More',style: GoogleFonts.roboto(color: Colors.grey[600],fontSize:15.sp,fontWeight: FontWeight.w800)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.collections_sharp,color: Colors.deepOrange[900],size: 24.sp,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 4),
                                              child: Text('Theme Mode',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('Light',style:GoogleFonts.roboto(fontSize: 14.sp,color: Colors.grey[500],),),
                                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 18.sp,),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.logout,color: Colors.deepOrange[900],size: 24.sp,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4),
                                            child: Text('Log Out',style:GoogleFonts.roboto(fontSize: 15.sp,color: Colors.grey[500],),),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 18.sp,)

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
     bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
                IconButton(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },),
                IconButton(
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
