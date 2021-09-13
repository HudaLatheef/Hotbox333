import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/Cart.dart';
import 'package:hotbox/pages/MyHomePage.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
          'Track Order',
          style: GoogleFonts.roboto(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Order ID:',
                    style: GoogleFonts.roboto(
                        color: Colors.grey[500], fontSize: 16.sp),
                  ),
                  Text(
                    ' 545615426',
                    style: GoogleFonts.roboto(fontSize: 16.sp),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 112, top: 30),
                    width: 2,
                    height: 0.40.sh,
                    color: Colors.grey[400],
                  ),
                  Column(
                    children: [
                      statusWidget(
                          "Order Placed",
                          true,
                          'Your order for item no.12554\nhas been confirmed',
                          "10 May 2021",
                          "10.20 am"),
                      statusWidget(
                          "Confirmed",
                          false,
                          'Your order for item no.12554\nis on process',
                          "10 May 2021",
                          "10.21 am"),
                      statusWidget(
                          "Order Processing",
                          false,
                          "Your order for item no.12554\nhas packed",
                          "10 May 2021",
                          "10.21 am"),
                      statusWidget(
                          "On the way",
                          false,
                          "Your order for item no.12554\nhas shipped to the given\ndelivery address",
                          "10 May 2021",
                          "10.21 am"),
                      statusWidget(
                          "Delivered",
                          false,
                          "item has delivered\nsuccessfully",
                          "10 May 2021",
                          "10.21 am"),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8),
                        child: Text('Order',style: GoogleFonts.roboto(color: Colors.grey[800],fontSize: 16.sp),),
                      ),
                      CartItem("assets/11.jpg",
                          "Classic Al-Fahm with Rice(HALF)", "₹ 315.00"),
                      CartItem("assets/12.jpg",
                          "Classic Al-Fahm with Rice(QUARTER)", "₹ 189.00"),
                      CartItem("assets/13.jpg",
                          "Classic Al-Fahm with Porotta(QUARTER)", "₹ 189.00"),
                    ],
                  ),
                ],
              ),
              Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item Total',
                        style: GoogleFonts.roboto(fontSize: 14.sp),
                      ),
                      Text(
                        '₹ 693.00',
                        style: GoogleFonts.roboto(fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: GoogleFonts.roboto(fontSize: 14.sp),
                      ),
                      Text(
                        '₹ 10.00',
                        style: GoogleFonts.roboto(fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: GoogleFonts.roboto(fontSize: 14.sp, color: Colors.green),
                      ),
                      Text(
                        'Free',
                        style: GoogleFonts.roboto(fontSize: 14.sp, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '₹ 683.00',
                    style: GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Visa Card',
                    style: GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

Container statusWidget(
    String status, bool isActive, String title, String text1, String text2) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 08),
          child: Column(
            children: [
              Text(
                text1,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: Colors.grey[700]),
              ),
              Text(
                text2,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (isActive) ? Colors.deepOrange[900] : Colors.white,
                border: Border.all(
                    color: (isActive) ? Colors.transparent : Colors.deepOrange[900],
                    width: 2)),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: GoogleFonts.roboto(
                  color: (isActive) ? Colors.deepOrange[900] : Colors.black,
                  fontSize: 13.sp),
            ),
          ],
        ),
      ],
    ),
  );
}
