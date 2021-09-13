import 'package:flutter/material.dart';
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/NumberVerification.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<ForgotPassword> {
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
            'Forget Password',
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
              'Forget Password',
              style: GoogleFonts.roboto(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Please enter your Email so we can help you recover your password',
              style: GoogleFonts.roboto(
                  fontSize: 14.sp, color: Colors.black, letterSpacing: 0),
            ),
          ),  
          Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 40, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2)),
                  ]),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 12, bottom: 12),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                      size: 24.sp,
                    ),
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.roboto(
                        color: Colors.black38, fontSize: 16.sp)),
              ),
            ),
          ),
          Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 25),
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
                              builder: (context) => NumberVerification()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'Reset Password',
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
