import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:superior/widgets/timeSelector.dart';
import 'package:superior/widgets/carPricingInfo.dart';

class PricingScreen extends StatefulWidget {
  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 1080,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(top: 0, child: buildHeader()),
                  Positioned(
                    top: 35.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height - 90 - 35,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          CarPricingInfo(),
                          TimeSelector(),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Divider(
                                color: Color(0xff999FAE).withOpacity(0.35),
                                thickness: 2.5),
                          ),
                          buildResources(),
                          SizedBox(height: 25.0),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height - 90 - 35,
                    child: Container(
                      height: 580.0,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xff18191A),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          Center(
                            child: Container(
                              height: 3.5,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  color: Color(0xff3A3B3C),
                                  borderRadius: BorderRadius.circular(25.0)),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Center(
                            child: Text(
                              "Checkout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28.0,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 18.0),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(15)),
                            height: 55.0,
                            width: MediaQuery.of(context).size.width - 30,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 25.0),
                                    child: Text(
                                      "Promo Code",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 25.0),
                                    padding: EdgeInsets.fromLTRB(4, 3, 4, 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      // color: Color(0xff191919)
                                    ),
                                    child: Icon(
                                      Octicons.plus,
                                      size: 18.0,
                                      color: Color(0xffF5BB11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Duration Cost",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                              Text(
                                "36,000 AED",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Resource Cost",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                              Text(
                                "1,450 AED",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                              Text(
                                "37,450 AED",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5% VAT",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                              Text(
                                "1,450 AED",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 18.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Grand Total",
                                style: TextStyle(
                                    color: Color(0xfffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                              Text(
                                "37,450 AED",
                                style: TextStyle(
                                    color: Color(0xfffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF5BB11),
                                borderRadius: BorderRadius.circular(15)),
                            height: 55.0,
                            width: MediaQuery.of(context).size.width - 30,
                            child: Center(
                              child: Text("Pay Now!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildResources() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          Text(
            "Resources",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 26.0),
          ),
          SizedBox(height: 10.0),
          ResourceBuild("Additional Driver", "300 AED - One Time"),
          SizedBox(height: 10.0),
          ResourceBuild("Baby Seat", "50 AED - Per Day"),
          SizedBox(height: 10.0),
          ResourceBuild("Delivery Outside Dubai", "1,000 AED - One Time"),
          SizedBox(height: 10.0),
          ResourceBuild("Extra 25 KM", "125 AED - Per Day"),
          SizedBox(height: 10.0),
          ResourceBuild("Extra 50 KM", "250 AED - Per Day"),
          SizedBox(height: 10.0),
          ResourceBuild("Full insurance (700)", "700 AED - Per Day"),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Row buildHeader() {
    return Row(
      children: [
        SizedBox(width: 10.0),
        Container(
          padding: EdgeInsets.fromLTRB(3, 3.5, 4, 3.5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
          child: Icon(FontAwesome.angle_left, size: 28.0, color: Colors.white),
        ),
        SizedBox(width: 65.0),
        Center(
          child: Text("Pricing Info",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 26.0)),
        )
      ],
    );
  }
}

class ResourceBuild extends StatefulWidget {
  final title;
  final sub;

  ResourceBuild(this.title, this.sub);

  @override
  _ResourceBuildState createState() => _ResourceBuildState();
}

class _ResourceBuildState extends State<ResourceBuild> {
  var tapped = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  this.tapped = !this.tapped;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff18191A),
                  borderRadius: BorderRadius.circular(11),
                ),
                height: 35.0,
                width: 35.0,
                child: this.tapped
                    ? Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF5BB11),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        height: 35.0,
                        width: 35.0,
                        child: Icon(
                          Octicons.check,
                        ),
                      )
                    : null,
              ),
            ),
            SizedBox(width: 10.0),
            Text(
              widget.title,
              style: TextStyle(color: Color(0xffffffff), fontSize: 14),
            ),
          ],
        ),
        Text(
          widget.sub,
          style: TextStyle(color: Color(0xff999999), fontSize: 10),
        ),
      ],
    );
  }
}
