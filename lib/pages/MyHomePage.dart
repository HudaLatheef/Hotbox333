import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotbox/pages/Address.dart';
import 'package:hotbox/pages/Cart.dart';
import 'package:hotbox/pages/CustomDrawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotbox/pages/Profile.dart';
import 'package:hotbox/pages/SignIn.dart';
import 'package:hotbox/pages/SignUp.dart';
import 'package:hotbox/pages/productdetails.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          iconSize: 100.sp,
          icon: Image.asset(
            'assets/hotbox.jpg',
            fit: BoxFit.contain,
            height: 70.sh,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Address()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'HOT BOX',
                    style: GoogleFonts.roboto(
                      color: Colors.grey[800],
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              Container(
                  width: 250.sw,
                  child: Text(
                    'Sonia Nagar, Palarivattom, kochi, Kerala 670103',
                    style: GoogleFonts.roboto(
                        color: Colors.grey[500], fontSize: 12.sp),
                    overflow: TextOverflow.ellipsis,
                  ))
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey[800],
            size: 30.sp,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.yellow[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.food_bank_outlined,
                                  color: Colors.black54,
                                  size: 36.sp,
                                ),
                              )),
                        ),
                        Text(' Prep. Time',
                            style: GoogleFonts.roboto(fontSize: 13.sp)),
                        Text('15 min',
                            style: GoogleFonts.roboto(fontSize: 13.sp))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.yellow[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.delivery_dining,
                                  color: Colors.black54,
                                  size: 36.sp,
                                ),
                              )),
                        ),
                        Text('Delivery Time',
                            style: GoogleFonts.roboto(fontSize: 13.sp)),
                        Text('15 min',
                            style: GoogleFonts.roboto(fontSize: 13.sp)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EmptyCart()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.yellow[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.black54,
                                  size: 36.sp,
                                ),
                              )),
                        ),
                        Text('Min Order',
                            style: GoogleFonts.roboto(fontSize: 13.sp)),
                        Text('180.00',
                            style: GoogleFonts.roboto(
                                color: Colors.green, fontSize: 13.sp)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 0.6.sh,
                // color: Color(0xfffff5ea),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 12, bottom: 15),
                      child: Container(
                        height: 0.088.sh,
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                          color: Colors.orange,
                          style: BorderStyle.solid,
                          width: 3.0,
                        ))),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('RECOMMENDED ',
                                    style: GoogleFonts.roboto(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.bold)),
                                Text('FOR YOU',
                                    style: GoogleFonts.roboto(
                                        fontSize: 19.0.sp,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 0.435.sh,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Product(
                              "assets/13.jpg",
                              "Classic Al-Faham with Porotta",
                              "8 Porotta",
                              "₹ 577"),
                          Product("assets/11.jpg", "Classic Biryani", "HALF",
                              "₹ 110"),
                          Product("assets/12.jpg", "Spicy Al-Faham", "FULL",
                              "₹ 233"),
                          Product("assets/14.jpg", "Classic Biryani", "HALF",
                              "₹ 110"),
                          Product("assets/11.jpg", "Classic Biryani", "HALF",
                              "₹ 110"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 15,
                height: 0.01.sh,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BIRYANI',
                      style: GoogleFonts.roboto(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Divider(
                        color: Colors.brown[600],
                        indent: 0,
                        endIndent: 320,
                        thickness: 2,
                        height: 0.015.sh,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Products("assets/11.jpg", "Mutton Biryani(Full)", "₹ 294"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/13.jpg", "Chicken Biryani(Full)", "₹ 189"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/11.jpg", "Beef Biryani(Full)", "₹ 110"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Divider(
                  color: Colors.grey[200],
                  thickness: 15,
                  height: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BIRYANI POT',
                      style: GoogleFonts.roboto(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Divider(
                        color: Colors.brown[600],
                        indent: 0,
                        endIndent: 320,
                        thickness: 2,
                        height: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Products("assets/11.jpg",
                      "Mutton Biryani(Idle for 4 Persons)", "₹ 1029"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/11.jpg",
                      "Chicken Biryani(Idle for 4 Persons)", "₹ 661"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/11.jpg", "Beef Biryani(Idle for 4 Persons)",
                      "₹ 661"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Divider(
                  color: Colors.grey[200],
                  thickness: 15,
                  height: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AL-FAHM',
                      style: GoogleFonts.roboto(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Divider(
                        color: Colors.brown[600],
                        indent: 0,
                        endIndent: 320,
                        thickness: 2,
                        height: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Products("assets/11.jpg", "Classic Al-Fahm with Rice(HALF)",
                      "₹ 315"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/11.jpg",
                      "Classic Al-Fahm with Rice(QUARTER)", "₹ 189"),
                  Divider(color: Colors.grey, height: 5),
                  Products("assets/11.jpg",
                      "Classic Al-Fahm with Porotta(QUARTER)", "₹ 189"),
                ],
              ),
            ]),
            Column(
              children: [
                Row(
                  children: [],
                )
              ],
            )
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

class Product extends StatefulWidget {
  final String imagePath, text, subtitle, price;

  Product(
    this.imagePath,
    this.text,
    this.subtitle,
    this.price,
  );
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
         onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ProductDetails()));
          },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          height: 0.25.sh,
          child: Column(
            children: [
              Container(
                height: 0.19.sh,
                width: 0.66.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(widget.imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 12, top: 7, bottom: 7, right: 10),
                child: Container(
                  width: 0.6.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '⊡',
                              style: GoogleFonts.roboto(
                                  color: Colors.red, fontSize: 19.sp),
                            ),
                            Container(
                              width: 0.45.sw,
                              height: 0.06.sh,
                              child: Text(
                                widget.text,
                                style: GoogleFonts.roboto(
                                    color: Colors.brown[900],
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(widget.subtitle,
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500)),
                            Text(
                              widget.price,
                              style: GoogleFonts.roboto(
                                  color: Colors.grey[600],
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w800),
                            )
                          ]),
                      Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  6,
                                ),
                                color: Colors.grey[100]),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 11, right: 11, top: 5, bottom: 5),
                                child: Text(
                                  'ADD',
                                  style: GoogleFonts.roboto(
                                    color: Colors.green,
                                    fontSize: 14.sp,
                                  ),
                                )),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Products extends StatefulWidget {
  final String imagePath, text, price;

  Products(
    this.imagePath,
    this.text,
    this.price,
  );
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        // height:  0.21.sh,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '⊡',
                    style:
                        GoogleFonts.roboto(color: Colors.red, fontSize: 14.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Container(
                      width: 0.63.sw,
                      height: 0.07.sh,
                      child: Text(
                        widget.text,
                        style: GoogleFonts.roboto(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(widget.price,
                        style: GoogleFonts.roboto(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                        )),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 0.13.sh,
                    width: 0.3.sw,
                    child: Column(
                      children: [
                        Container(
                          height: 0.115.sh,
                          width: 0.29.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(widget.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 18,
                      right: 18,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 7.0,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4, right: 4, top: 6, bottom: 6),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('ADD',
                                style: GoogleFonts.roboto(
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                )),
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
