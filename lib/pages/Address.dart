import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/Cart.dart';
import 'package:hotbox/pages/MyHomePage.dart';

import 'Profile.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200])),
                child: Icon(
                  Icons.keyboard_arrow_left_sharp,
                  color: Colors.grey,
                )),
          ),
        ),
        title: Text(
          'My Address',
          style: GoogleFonts.roboto(
              color: Colors.grey[800], fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              child: new TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                        right: 4.0, top: 0, bottom: 0, left: 2.0),
                    child: SizedBox(
                      width: 64.0,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 30.sp,
                              color: Colors.black45,
                            ),
                          )),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search Address',
                  hintStyle: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black45,
                ),
                Container(
                    width: 0.8.sw,
                    child: Text(
                      'Sonia Nagar, Palarivattom, kochi, Kerala 670103',
                      style: GoogleFonts.roboto(
                        color: Colors.black54,
                        fontSize: 14.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 0.48.sh,
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage("assets/loc.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  right: 15,
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepOrange[900]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.location_searching_outlined,
                              color: Colors.white,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.deepOrange[900],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.deepOrange[900],
                              ),
                            )),
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange[900],
                borderRadius: BorderRadius.circular(18),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetLocation()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Save',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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

class SetLocation extends StatefulWidget {
  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey,
                height: 1.0.sh,
                child: Stack(
                  children: [
                    Container(
                      height: 0.6.sh,
                      width: 1.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage("assets/loc.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Colors.grey[300], width: 2)),
                              child: Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: Colors.black,
                                size: 40.sp,
                              )),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        right: 10,
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.deepOrange[900]),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.location_searching_outlined,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        )),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 1.0.sw,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text('Select Location',
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[708000],
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Divider(
                          color: Colors.grey[200],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
                          child: Text('Your Location',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[500],
                                fontSize: 15.sp,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.black45,
                                    size: 16.sp,
                                  ),
                                  Container(
                                      width: 0.6.sw,
                                      child: Text(
                                        'Sonia Nagar, Palarivattom, kochi, Kerala 670103',
                                        style: GoogleFonts.roboto(
                                          color: Colors.grey[900],
                                          fontSize: 13.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyHomePage()));
                                  },
                                  child: Text('Change',
                                      style: GoogleFonts.roboto(
                                          color: Colors.orange,
                                          fontSize: 13.sp)))
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[200],
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange[900],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(
                                      'Save Address',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
