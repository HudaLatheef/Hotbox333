import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'MyHomePage.dart';

class Ckeckout extends StatefulWidget {
  @override
  _CkeckoutState createState() => _CkeckoutState();
}

class _CkeckoutState extends State<Ckeckout> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
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
          'Checkout',
          style: GoogleFonts.roboto(
              color: Colors.grey[800], fontSize: 20.sp),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height:0.08.sh,
                            width: 0.2.sw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/location1.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' Deliver To: Home',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 15.sp,
                                  ),
                                  Text(
                                    '13A, Palarivattom,Kochi',
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[500], fontSize: 12.sp),  overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Change',
                          style: GoogleFonts.roboto(
                              color: Colors.orange[800], fontSize: 13.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                CartItem("assets/11.jpg", "Classic Al-Fahm with Rice(HALF)",
                    "₹ 315.00"),
                CartItem("assets/12.jpg", "Classic Al-Fahm with Rice(QUARTER)",
                    "₹ 189.00"),
                
              ],
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Payment Method',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700, color: Colors.grey[700])),
            ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.all(8),
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
                              iconSize: 8.0.sp,
                              icon: Image.asset(
                                "assets/image3.jpeg",
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // ignore: missing_required_param
                                      builder: (context) => MyHomePage()),
                                );
                              }),
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('GooglePay/BHIM UPI ',
                                      style: GoogleFonts.roboto(
                                          fontSize: 15.0.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Text('Faster & safer way to send Money',
                                      style: GoogleFonts.roboto(
                                          fontSize: 8.0.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
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
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height:0.08.sh,
                            width: 0.2.sw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/location1.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' Deliver To: Home',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500, fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 15.sp,
                                  ),
                                  Text(
                                    '13A, Palarivattom,Kochi',
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[500], fontSize: 12.sp),  overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Change',
                          style: GoogleFonts.roboto(
                              color: Colors.orange[800], fontSize: 13.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                               onPressed: () {
          showAlertDialog(context);
        },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(
                                      'Confirm Order',
                                      style: GoogleFonts.roboto(
                                          color: Colors.deepOrange[900],
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

class CartItem extends StatefulWidget {
  final String imagePath, text, price;

  CartItem([
    this.imagePath,
    this.text,
    this.price,]
  );

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
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
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(),
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        color: Color(0xffD63027),
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            'Delete',
            style: GoogleFonts.roboto(color: Colors.white),
          ),
        ),
      ),
      onDismissed: (DismissDirection direction) {
        // ignore: unused_local_variable
        String actoin = direction == DismissDirection.endToStart
            ? "Delete"
            :
            // ignore: deprecated_member_use
            Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Item deleted'),
              ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:  0.110.sh,
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
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height:0.07.sh,
                            width: 0.4.sw,
                            child: Text(
                              widget.text,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[800],
                                fontSize: 13.sp,
                              ),
                            )),
                        Text(widget.price,
                            style: GoogleFonts.roboto(
                                color: Colors.orange[800],
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                        new Text('$_n', style:GoogleFonts.roboto(fontSize: 13.sp)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyCart extends StatefulWidget {

  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
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
          'Orders',
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
          )
        ],
      ),
      body: Column(
      children: [
      Padding(
        padding: const EdgeInsets.only(top:45.0,left: 60,right: 60),
        child: Container(
                  height: 0.4.sh,
                  width: 07.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage("assets/emptycart.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Container(
          child: Align(
          alignment: Alignment.center,
            child: Text(
                'Go ahead, order some items from the menu',
                style: GoogleFonts.roboto(
                    color: Colors.grey[600], fontSize: 16.sp),textAlign: TextAlign.center,
              ),
          ),
        ),
      ),
      Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 12,left: 70,right: 70),
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
                            '+ Add Items',
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
      
    );
  }
}


  showAlertDialog(BuildContext context) {
    // set up the buttons
    // Widget cancelButton = FlatButton(
    //   child: Text("Cancel"),
    //   onPressed: () {},
    // );
    // ignore: deprecated_member_use
    Widget continueButton = FlatButton(
      child: Text("Keep Browsing Food",
      textAlign:TextAlign.center,
       style: TextStyle(
          color: Colors.deepOrange[900],
          fontSize: 12.0.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();

      
    },
  );
    

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "You Place The Order Successfully",
        textAlign:TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        "You Placed The Order successfully. You Will Get Your Order Within 25 Minutes.Thanks For Using Our Services,Enjoy Your Food",
        style: TextStyle(
            color: Colors.black54,
            fontSize: 12.0.sp,
            fontWeight: FontWeight.normal),
      ),
      actions: [
        // cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


