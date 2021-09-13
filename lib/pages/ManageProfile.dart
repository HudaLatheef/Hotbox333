import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/Address.dart';
import 'package:hotbox/pages/Cart.dart';
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/Profile.dart';

// ignore: unused_import

class ManageProfile extends StatelessWidget {
  get inputType => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ignore: missing_required_param
                        builder: (context) => MyHomePage()),
                  );
                }),
            actions: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text('save',
                        style: GoogleFonts.roboto(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.orange,
                        )),
                  ),
                ],
              )
            ]),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 0),
              child: Container(
                  height: 0.18.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                        image: AssetImage("assets/profile4.png"),
                      )))),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 6.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.person_rounded,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "Name",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                  color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.lock_outline,
                           color: Colors.grey,
                            size: 24.sp
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "Password",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                  color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "Email",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                   color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.call_rounded,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "Phone Number",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                  color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "location",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => Address()),
                              );
                            }),
                      ])),
                ),
                Divider(
                   color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.language_outlined,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "language",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                   color: Colors.grey[400],
                  height:0.001.sh ,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 2,left: 12,right: 6),
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(children: [
                          Icon(
                            Icons.people_alt_rounded,
                            color: Colors.grey,
                            size: 24.sp,
                          ),
                          Container(
                            width:0.67.sw,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: inputType,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                  hintText: "Gender",hintStyle: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.grey[800]),),
                            ),
                          ),
                        ]),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios,size: 17.sp),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // ignore: missing_required_param
                                    builder: (context) => ManageProfile()),
                              );
                            }),
                      ])),
                ),
                Divider(
                  color: Colors.grey[400],
                  height:0.001.sh ,
                ),
              ]),
            ),
          ),
        ])),
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
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
         );
  }
}
