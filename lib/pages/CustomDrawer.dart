import 'package:flutter/material.dart';
import 'package:hotbox/pages/Cart.dart';
// ignore: unused_import
import 'package:hotbox/pages/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/MyOrders.dart';
import 'package:hotbox/pages/Profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Drawer(
        child: Column(
      children: [
        Column(
          children: [
            Container(
              height: 0.30.sh,
              width: 0.53.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/hotbox.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Divider(
              color: Colors.grey[200],
              height: 2,
              thickness: 8,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Home',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Cart',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyOrders()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.history,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Order History',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Profile',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_sharp,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Help',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Notifications',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.power_settings_new_rounded,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Log Out',
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
