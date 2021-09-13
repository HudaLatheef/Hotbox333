import 'package:flutter/material.dart';
import 'package:hotbox/pages/ForgotPassword.dart';
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/SignUp.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
    bool isEnabled = true;
bool isDisabled = false;
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
            'Sign In',
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
                  'Welcome To',
                  style: GoogleFonts.roboto(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800]),
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              'Enter your Phone number or Email address for SignIn. Enjoy your food!',
             style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: Colors.black,
                            letterSpacing: 0),
            ),
          ),
          Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 5),
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
                          Icons.person_outline,
                          color: Colors.grey,
                          size: 24.sp,
                        ),
                        hintText: 'User Name',
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black38, fontSize: 16.sp)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 5),
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
                          Icons.lock_outline,
                          color: Colors.grey,
                          size: 24.sp,
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black38, fontSize: 16.sp)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Switch(
                          activeColor: Colors.deepOrange[900],
                          value: isDisabled,
                          onChanged: (check) {
                             setState(() {
                                 isDisabled = check;
                                });
                          }),
                           Text('Remember Me',style:GoogleFonts.roboto(fontSize: 13.sp,color: Colors.grey[500],),),

                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
              },
                      child: Text('Forgot Password?',style:GoogleFonts.roboto(fontSize: 13.sp,color: Colors.deepOrange[900],),)),
                  ],
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
                            'Sign In',
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
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: GoogleFonts.roboto(
                      fontSize: 14.sp, color: Colors.black, letterSpacing: 0),
                ),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp  ()));
                    },
                                  child: Text('Signup',
                      style: GoogleFonts.roboto(
                      fontSize: 14.sp, color: Colors.deepOrange[900])),
                ),
                
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('OR',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4267B2),
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
                          padding: const EdgeInsets.only(left:0.0),
                          child: Icon(Icons.face_unlock_outlined,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'Conenct with Facebook',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
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
                          padding: const EdgeInsets.only(left:0.0),
                          child: Icon(Icons.search,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            'Conenct with Google',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
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