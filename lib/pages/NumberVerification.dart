import 'package:flutter/material.dart';
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/VerificationOTP.dart';


// import 'package:flutter_application_3/signup.dart';

class NumberVerification extends StatefulWidget {
  NumberVerification({Key key}) : super(key: key);

  @override
  _NumberVerificationState createState() => _NumberVerificationState();
}

class _NumberVerificationState extends State<NumberVerification> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height;

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
            'Login into HOT BOX',
            style: GoogleFonts.roboto(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800]),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
            padding: const EdgeInsets.only(left: 12, top: 30, bottom: 0),
            child: Text(
                  'Enter your registered phone number to log in',
                  style: GoogleFonts.roboto(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800]),
                ),
          ),
          
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 60, bottom: 10),
              child: Text('Phone Number',
                  style: GoogleFonts.roboto(fontSize: 17.sp, color: Colors.grey)),
            ),
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 1, top: 30),
            ),
            Container(
              width: 0.21.sw,
              height: 0.09.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 5,
                    top: 10,
                  ),
                  hintText: '+91',
                  hintStyle: GoogleFonts.roboto(color: Colors.grey[700],fontSize: 16.sp),
                  counterText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 1, top: 30),
            ),
            Container(
              width: 0.7.sw,
              height: 0.09.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              
              child: TextFormField(
                cursorColor: Colors.black,
                
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 15,
                    right: 10,
                    bottom: 5,
                    top: 10,
                  ),
                  hintText: 'Phone Number',
                  hintStyle: GoogleFonts.roboto(color: Colors.grey[400],fontSize: 16.sp),
                  fillColor: Colors.grey,
                  counterText: '',
                ),
              ),
            ),
          ]),
          Padding(
                padding: const EdgeInsets.only(left: 12,right:12,top: 30),
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
                              builder: (context) => VerificationOTP()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'Continue',
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
        ])));
  }
}