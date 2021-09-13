import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/Checkout.dart';

import 'MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with SingleTickerProviderStateMixin {
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;
  bool _checkboxValue4 = false;
  
  double _animatedHeight = 100.0.sp;
  double _animatedHeight1 = 260.0.sp;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size;
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
          'Add A Payment Method',
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 30, top: 30, bottom: 20),
                      child: Text('Choose payment method to add',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                  ]),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () => setState(() {
                          _animatedHeight != 0.0
                              ? _animatedHeight = 0.0
                              : _animatedHeight = 100.0.sp;
                        }),
                        child: new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey[200]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              iconSize: 8.0.sp,
                                              icon: Image.asset(
                                                "assets/image3.jpeg",
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      // ignore: missing_required_param
                                                      builder: (context) =>
                                                          MyHomePage()),
                                                );
                                              }),
                                          Row(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('GooglePay/BHIM UPI ',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 15.0.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text(
                                                      'Faster & safer way to send Money',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 8.0.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                       GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue1 = !_checkboxValue1;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue1,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 32),
                                        child: Text(
                                          'Enter UPI ID',
                                          style: GoogleFonts.roboto(
                                              fontSize: 14.sp,
                                              color: Colors.grey[800],
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 32, right: 32),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TextField(
                                              keyboardType: TextInputType.text,
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14.sp),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          top: 0, bottom: 0),
                                                  hintText: 'i.e.  name@upi',
                                                  hintStyle: GoogleFonts.roboto(
                                                      color: Colors.black38,
                                                      fontSize: 13.sp)),
                                            ),
                                            Divider(
                                              color: Colors.blue[800],
                                              height: 1,
                                              thickness: 2,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: _animatedHeight,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () => setState(() {
                          _animatedHeight1 != 0.0
                              ? _animatedHeight1 = 0.0
                              : _animatedHeight1 = 280.0.sp;
                        }),
                        child: new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey[200]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              iconSize: 10.0.sp,
                                              icon: Image.asset(
                                                "assets/image2.jpeg",
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      // ignore: missing_required_param
                                                      builder: (context) =>
                                                          MyHomePage()),
                                                );
                                              }),
                                          Row(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Credit/Debit Card ',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 15.0.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text(
                                                      'Pay with MasterCard or Visa',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 10.0.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _checkboxValue2 = !_checkboxValue2;
                                          });
                                        },
                                        // ignore: missing_required_param
                                        child: Checkbox(
                                          value: _checkboxValue2,
                                          checkColor: Colors.black,
                                          activeColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CARDHOLDERS NAME',
                                            style: GoogleFonts.roboto(
                                                fontSize: 12.sp,
                                                color: Colors.grey[500],
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                            height: 0.08.sh,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: TextField(
                                              keyboardType: TextInputType.text,
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14.sp),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          top: 0,
                                                          bottom: 10,
                                                          left: 10),
                                                  hintText: '',
                                                  hintStyle: GoogleFonts.roboto(
                                                      color: Colors.black38,
                                                      fontSize: 13.sp)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              'CARD NUMBER',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                  width: 0.183.sw,
                                                  height: 0.08.sh,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: TextFormField(
                                                    cursorColor: Colors.black,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14.sp),
                                                    maxLength: 4,
                                                    decoration:
                                                        new InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                        bottom: 5,
                                                        top: 10,
                                                      ),
                                                      hintText: "",
                                                      hintStyle:
                                                          GoogleFonts.roboto(
                                                              color: Colors
                                                                  .black38,
                                                              fontSize: 13.sp),
                                                      counterText: '',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                  width: 0.183.sw,
                                                  height: 0.08.sh,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: TextFormField(
                                                    cursorColor: Colors.black,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14.sp),
                                                    maxLength: 4,
                                                    decoration:
                                                        new InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                        bottom: 5,
                                                        top: 10,
                                                      ),
                                                      hintText: "",
                                                      hintStyle:
                                                          GoogleFonts.roboto(
                                                              color: Colors
                                                                  .black38,
                                                              fontSize: 13.sp),
                                                      counterText: '',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                  width: 0.183.sw,
                                                  height: 0.08.sh,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: TextFormField(
                                                    cursorColor: Colors.black,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14.sp),
                                                    maxLength: 4,
                                                    decoration:
                                                        new InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                        bottom: 5,
                                                        top: 10,
                                                      ),
                                                      hintText: "",
                                                      hintStyle:
                                                          GoogleFonts.roboto(
                                                              color: Colors
                                                                  .black38,
                                                              fontSize: 13.sp),
                                                      counterText: '',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Container(
                                                  width: 0.183.sw,
                                                  height: 0.08.sh,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: TextFormField(
                                                    cursorColor: Colors.black,
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    maxLength: 4,
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14.sp),
                                                    decoration:
                                                        new InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                        bottom: 5,
                                                        top: 10,
                                                      ),
                                                      hintText: "",
                                                      hintStyle:
                                                          GoogleFonts.roboto(
                                                              color: Colors
                                                                  .black38,
                                                              fontSize: 5.sp),
                                                      counterText: '',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Text(
                                                      'EXPIRY DATE',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 12.sp,
                                                          color:
                                                              Colors.grey[500],
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10),
                                                        child: Container(
                                                          width: 0.183.sw,
                                                          height: 0.08.sh,
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                          child: TextFormField(
                                                            cursorColor:
                                                                Colors.black,
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            maxLength: 2,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87,
                                                                fontSize:
                                                                    14.sp),
                                                            decoration:
                                                                new InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              disabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 10,
                                                                right: 10,
                                                                bottom: 5,
                                                                top: 10,
                                                              ),
                                                              hintText: "",
                                                              hintStyle: GoogleFonts
                                                                  .roboto(
                                                                      color: Colors
                                                                          .black38,
                                                                      fontSize:
                                                                          5.sp),
                                                              counterText: '',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10,left: 40),
                                                        child: Container(
                                                          width: 0.183.sw,
                                                          height: 0.08.sh,
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                          child: TextFormField(
                                                            cursorColor:
                                                                Colors.black,
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            maxLength: 4,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87,
                                                                fontSize:
                                                                    14.sp),
                                                            decoration:
                                                                new InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              disabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 10,
                                                                right: 10,
                                                                bottom: 5,
                                                                top: 10,
                                                              ),
                                                              hintText: "",
                                                              hintStyle: GoogleFonts
                                                                  .roboto(
                                                                      color: Colors
                                                                          .black38,
                                                                      fontSize:
                                                                          5.sp),
                                                              counterText: '',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                   Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Text(
                                                      'CVV',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 12.sp,
                                                          color:
                                                              Colors.grey[500],
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                   Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 10),
                                                        child: Container(
                                                          width: 0.183.sw,
                                                          height: 0.08.sh,
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .grey,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                          child: TextFormField(
                                                            cursorColor:
                                                                Colors.black,
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            maxLength: 3,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87,
                                                                fontSize:
                                                                    14.sp),
                                                            decoration:
                                                                new InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              disabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 10,
                                                                right: 10,
                                                                bottom: 5,
                                                                top: 10,
                                                              ),
                                                              hintText: "",
                                                              hintStyle: GoogleFonts
                                                                  .roboto(
                                                                      color: Colors
                                                                          .black38,
                                                                      fontSize:
                                                                          5.sp),
                                                              counterText: '',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                ],
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                  height: _animatedHeight1
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              },
                              child: Row(
                                children: [
                                  IconButton(
                                      iconSize: 10.0.sp,
                                      icon: Image.asset(
                                        "assets/image1.jpeg",
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              // ignore: missing_required_param
                                              builder: (context) =>
                                                  MyHomePage()),
                                        );
                                      }),
                                  Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Cash On Delivery ',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 15.0.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                          Text('Pay direct to delivery team',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 10.0.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _checkboxValue3 = !_checkboxValue3;
                                });
                              },
                              // ignore: missing_required_param
                              child: Checkbox(
                                value: _checkboxValue3,
                                checkColor: Colors.black,
                                activeColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              },
                              child: Row(
                                children: [
                                  IconButton(
                                      iconSize: 10.0.sp,
                                      icon: Image.asset(
                                        "assets/image1.jpeg",
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              // ignore: missing_required_param
                                              builder: (context) =>
                                                  MyHomePage()),
                                        );
                                      }),
                                  Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('PickUp from Store',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 15.0.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                          Text('Collect order from store',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 10.0.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _checkboxValue4 = !_checkboxValue4;
                                });
                              },
                              // ignore: missing_required_param
                              child: Checkbox(
                                value: _checkboxValue4,
                                checkColor: Colors.black,
                                activeColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 18),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange[900],
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ckeckout()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    'Next',
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
    );
  }
}
