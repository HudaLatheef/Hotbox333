import 'dart:ui';
import 'package:hotbox/pages/Cart.dart';
import 'package:hotbox/pages/Profile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/MyHomePage.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _n = 1;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 1) _n--;
    });
  }

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
          'Biryani',
          style: GoogleFonts.roboto(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 0.4.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage("assets/14.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('Chicken Biryani(Full)',
                        style: GoogleFonts.roboto(
                            fontSize: 20.sp,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        rating: 3,
                        size: 30.0.sp,
                        isReadOnly: true,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        color: Colors.amber[300],
                        borderColor: Colors.grey,
                        spacing: 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text('₹ 294',
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey[200]),
                          child: Row(
                            children: [
                              MaterialButton(
                                minWidth: 0,
                                onPressed: minus,
                                child: new Icon(Icons.remove,
                                    color: Colors.green, size: 12.sp),
                              ),
                              new Text('$_n',
                                  style: new TextStyle(fontSize: 13.sp)),
                              MaterialButton(
                                minWidth: 0,
                                onPressed: add,
                                child: new Icon(Icons.add,
                                    color: Colors.orange[800], size: 12.sp),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('Description',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                        'Chicken Biryani is a savory chicken and rice dish that includes layers of chicken, while the top layer of rice turns out white and fluffy.',
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('Review Product',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 35.sp,
                                  backgroundImage:
                                      AssetImage('assets/profile4.png'),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Container(
                                height: 0.19.sh,
                                width: 0.7.sw,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 3,
                                                size: 20.sp,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Colors.amber[300],
                                                borderColor: Colors.amber[300],
                                                spacing: 0.0),
                                            SizedBox(
                                              width: 0.1.sw,
                                            ),
                                            Text('10 Oct, 2020')
                                          ]),
                                      Text('Jane Doe'),
                                      Container(
                                        child: Text(
                                          'This dish tastes yumm and feels \nlike home food',
                                          style: GoogleFonts.roboto(
                                              fontSize: 13.5.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/profile3.png'),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Container(
                                height: 0.19.sh,
                                width: 0.7.sw,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SmoothStarRating(
                                                allowHalfRating: false,
                                                onRated: (v) {},
                                                starCount: 5,
                                                rating: 4,
                                                size: 20.sp,
                                                isReadOnly: true,
                                                filledIconData: Icons.star,
                                                halfFilledIconData:
                                                    Icons.star_half,
                                                defaultIconData:
                                                    Icons.star_border,
                                                color: Colors.amber[300],
                                                borderColor: Colors.amber[300],
                                                spacing: 0.0),
                                            SizedBox(
                                              width: 0.1.sw,
                                            ),
                                            Text('09 Oct, 2020')
                                          ]),
                                      Text('Felisha'),
                                      Text(
                                        'Super fresh dish',
                                        style: GoogleFonts.roboto(
                                            fontSize: 13.5.truncateToDouble()),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Write Review',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Container(
                          height: 0.04.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                    padding: EdgeInsets.only(
                        top: 8.0, left: 13.0, right: 13.0, bottom: 20.0),
                    height: 60,
                    child: new TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Type here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(03.0),
                        ),
                      ),
                    ),
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
                            'Add To Cart',
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
          ],
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
