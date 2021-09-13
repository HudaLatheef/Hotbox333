import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/CustomDrawer.dart';
import 'package:hotbox/pages/TrackOrder.dart';
import 'Cart.dart';
import 'MyHomePage.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomDrawer()));
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
          'My Orders',
          style: GoogleFonts.roboto(
              color: Colors.grey[800], fontSize: 19.sp),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 18),
                      child: Text('12 June 2020',
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 14.sp)),
                    ),
                    OrderItem("assets/11.jpg", "Classic Biryani",
                        "12 June 2021,11.30", "₹ 110.00","cancel Order"),
                    OrderItem("assets/12.jpg", "Spicy Al-Faham",
                        "12 June 2021,11.30", "₹ 230.00","ReOrder"),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 18),
                      child: Text('10 June 2020',
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 13)),
                    ),
                    OrderItem("assets/11.jpg", "Classic Biryani",
                        "12 June 2021,11.30", "₹ 110.00","ReOrder"),
                    OrderItem("assets/12.jpg", "Spicy Al-Faham",
                        "12 June 2021,11.30", "₹ 230.00","ReOrder"),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 18),
                      child: Text('10 June 2020',
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 13)),
                    ),
                    OrderItem("assets/11.jpg", "Classic Biryani",
                        "12 June 2021,11.30", "₹ 110.00","ReOrder"),
                    OrderItem("assets/12.jpg", "Spicy Al-Faham",
                        "12 June 2021,11.30", "₹ 230.00","ReOrder"),
                  ],
                ),
              ],
            ),
          ),
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
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatefulWidget {
  final String imagePath, text, subtitle, price,txt;

  OrderItem(
    this.imagePath,
    this.text,
    this.subtitle,
    this.price,
    this.txt,
    
  );

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 0.110.sh,
                    width: 0.2.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 0.065.sh,
                            width: 0.52.sw,
                            child: Text(
                              widget.text,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontSize: 15.sp,
                              ),
                            )),
                        Text(widget.subtitle,
                            style: GoogleFonts.roboto(
                                color: Colors.grey[500],
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(widget.price,
                    style: GoogleFonts.roboto(
                        color: Colors.orange[800],
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 0.062.sh,
                    width: 0.43.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepOrange[900]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 17.sp,
                      ),
                      Text(
                        widget.txt,
                        style: GoogleFonts.roboto(
                            fontSize: 13.sp, color: Colors.white),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrackOrder()));
                  },
                  child: Container(
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 10, bottom: 10),
                        child: Text(
                          'Track Order',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp, color: Colors.grey[800]),
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
