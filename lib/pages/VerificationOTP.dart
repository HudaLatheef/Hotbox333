import 'package:flutter/material.dart';
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class VerificationOTP extends StatefulWidget {
  @override
  _VerificationOTPState createState() => _VerificationOTPState();
}

class _VerificationOTPState extends State<VerificationOTP> {
  

  @override
  // ignore: missing_return
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
            'Verification',
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
                  'Verification',
                  style: GoogleFonts.roboto(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800]),
                ),
              ),
               Padding(
            padding: const EdgeInsets.only(left: 13,right: 13,top: 13),
            child: Text(
              'Enter The OTP code from the phone we just ',
              style: GoogleFonts.roboto(
                  fontSize: 14.sp, color: Colors.grey, letterSpacing: 0),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.only(left: 13,right: 13,top: 3),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text(
                'sent you at',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp, color: Colors.grey, letterSpacing: 0),
              ),
                  Text('  0986436789',
                      style:  GoogleFonts.roboto(fontSize: 14.sp, color: Colors.orange))
                ],
              ),
            ]),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 30, bottom: 40),
              child: Text('Did You Enter The Correct Number?',
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
          ]),


          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
            ),
            Container(
              width:  0.15.sw,
              height: 0.1.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.deepOrange[900],
                ),
              ),
              
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10,),
                  hintText: "*",
                  counterText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
            ),
            Container(
             width:  0.15.sw,
              height: 0.1.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.deepOrange[900],
                ),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 10,right: 10, bottom: 5, top: 10, ),
                  hintText: "*",
                  counterText: '',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
            ),
            Container(
             width:  0.15.sw,
              height: 0.1.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.deepOrange[900],
                ),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10, ),
                  hintText: "*",
                  counterText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
            ),
            Container(
              width:  0.15.sw,
              height: 0.1.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.deepOrange[900],
                ),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 10,  right: 10,bottom: 5, top: 10,),
                  hintText: "*",
                  counterText: '',
                ),
              ),
            ),
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 30, bottom: 10),
              child: Text(" Didn't receive SMS?",
                  style: GoogleFonts.roboto(fontSize: 14.sp, color: Colors.black)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 30, bottom: 10),
                  child: Text('Resend Code',
                      style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: Colors.deepOrange[900],
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ]),
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
                            'Verify',
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