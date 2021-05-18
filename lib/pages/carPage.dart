import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:superior/widgets/sepReview.dart';

class CarPage extends StatelessWidget {
  void initState() {
    // put it here
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = 500 / 662 * width;

    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 2000,
            width: width,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Image(
                    image: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-lamborghini-huracan-evo-mmp-1-1600293029.jpg?crop=1.00xw:0.844xh;0,0.120xh&resize=1200:*"),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10.0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(3, 3.5, 4, 3.5),
                          decoration: BoxDecoration(
                              color: Color(0xff3B3C3E).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Icon(FontAwesome.angle_left,
                              size: 32.0, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(3.5, 4, 3.5, 3),
                              decoration: BoxDecoration(
                                  color: Color(0xff3B3C3E).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(Octicons.heart,
                                  size: 32.0, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                              decoration: BoxDecoration(
                                  color: Color(0xff3B3C3E).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(FontAwesome.share_alt,
                                  size: 24.0, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 2000,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: height - 40,
                        child: Container(
                          height: 2000,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Color(0xff18191A),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(50.0),
                              //   child: Divider(
                              //     thickness: 5.0,
                              //     color: Color(0xff979797),
                              //     indent: 10.0,
                              //   ),
                              // ),
                              Center(
                                child: Container(
                                  height: 3.5,
                                  width: width / 2.5,
                                  decoration: BoxDecoration(
                                      color: Color(0xff979797),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                ),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Rent Lamborghini Urus",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10.0),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Octicons.star,
                                        color: Color(0xffF5BB11),
                                        size: 20.0,
                                      ),
                                      Icon(
                                        Octicons.star,
                                        color: Color(0xffF5BB11),
                                        size: 20.0,
                                      ),
                                      Icon(
                                        Octicons.star,
                                        color: Color(0xffF5BB11),
                                        size: 20.0,
                                      ),
                                      Icon(
                                        Octicons.star,
                                        color: Color(0xffF5BB11),
                                        size: 20.0,
                                      ),
                                      Icon(
                                        Octicons.star,
                                        color: Color(0xff3A3B3C),
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    "(Based on 19 Reviews)",
                                    style: TextStyle(
                                        color: Color(0xff79797D),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                "A name that screams excellence like no other, the Lamborghini Urus is an all-rounded super sportscar equipped with one of the most powerful twin-turbo engines in the market. Made to impress with its top speed, ultimate control, and sleek exterior, the ",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xff999999),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10.0),

                              buildRow(),
                              SizedBox(height: 10.0),
                              buildRow2(),
                              SizedBox(height: 10.0),
                              Divider(
                                  thickness: 2.5,
                                  color: Color(0xff999FAE).withOpacity(.35)),
                              SizedBox(height: 10.0),
                              SizedBox(height: 5.0),
                              Text(
                                "Related Videos",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10.0),
                              buildCarousal(),
                              SizedBox(height: 10.0),
                              Divider(
                                  thickness: 2.5,
                                  color: Color(0xff999FAE).withOpacity(.35)),
                              SizedBox(height: 10.0),
                              Text(
                                "Google Reviews",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                            fontSize: 48.0,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "out of 5",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xff79797D),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                              height: 5.0,
                                              width: 150.0,
                                              decoration: BoxDecoration(
                                                // color: Color(0xff2B2B2B),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 5.0,
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff2B2B2B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                  Container(
                                                      height: 5.0,
                                                      width: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10.0),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                              height: 5.0,
                                              width: 150.0,
                                              decoration: BoxDecoration(
                                                // color: Color(0xff2B2B2B),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 5.0,
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff2B2B2B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                  Container(
                                                      height: 5.0,
                                                      width: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                              height: 5.0,
                                              width: 150.0,
                                              decoration: BoxDecoration(
                                                // color: Color(0xff2B2B2B),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 5.0,
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff2B2B2B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                  Container(
                                                      height: 5.0,
                                                      width: 15.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                              height: 5.0,
                                              width: 150.0,
                                              decoration: BoxDecoration(
                                                // color: Color(0xff2B2B2B),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 5.0,
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff2B2B2B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                  Container(
                                                      height: 5.0,
                                                      width: 25.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          SizedBox(width: 10.0),
                                          Icon(
                                            Octicons.star,
                                            color: Color(0xff999999),
                                            size: 10.0,
                                          ),
                                          SizedBox(width: 10.0),
                                          Container(
                                              height: 5.0,
                                              width: 150.0,
                                              decoration: BoxDecoration(
                                                // color: Color(0xff2B2B2B),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                      height: 5.0,
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff2B2B2B),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                  Container(
                                                      height: 5.0,
                                                      width: 10.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff999999),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              SepReview(),
                              SizedBox(height: 15.0),
                              SepReview(),
                              SizedBox(height: 15.0),
                              SepReview(),
                              SizedBox(height: 15.0),
                              SepReview(),
                              SizedBox(height: 15.0),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CarouselSlider buildCarousal() {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/1-ferrari-sf90-stradale-2020-fd-hero-front_0.jpg?itok=SEGd1tLc"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/mclaren-720s_0.jpg?itok=wZbSZ3FZ"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //3rd Image of Slider
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/ferrari_f8_tributo.jpg?itok=1TG8_Tnx"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //4th Image of Slider
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/huracan-evo-.jpg?itok=8Yc8R3_R"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //5th Image of Slider
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/ford-gt_1.jpg?itok=RTPBCvpp"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        initialPage: 2,
        enlargeCenterPage: false,
        aspectRatio: 16 / 9,
        enableInfiniteScroll: false,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }

  Row buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(6, 6, 7.5, 6),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Icon(
                FontAwesomeIcons.creditCard,
                color: Color(0xffF5BB11),
                size: 14.0,
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              "Deposit: 4000 AED",
              style: TextStyle(color: Color(0xffcccccc), fontSize: 12.0),
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(6, 6, 7.5, 6),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Icon(
                FontAwesomeIcons.locationArrow,
                color: Color(0xffF5BB11),
                size: 14.0,
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              "250KM Included",
              style: TextStyle(color: Color(0xffcccccc), fontSize: 12.0),
            )
          ],
        ),
      ],
    );
  }

  Row buildRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(6, 6, 7.5, 6),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Icon(
                FontAwesomeIcons.clock,
                color: Color(0xffF5BB11),
                size: 14.0,
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              "1200 AED /Hr",
              style: TextStyle(color: Color(0xffcccccc), fontSize: 12.0),
            )
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(6, 6, 7.5, 6),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Icon(
                FontAwesomeIcons.locationArrow,
                color: Color(0xffF5BB11),
                size: 14.0,
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              "3,000 AED /Day",
              style: TextStyle(color: Color(0xffcccccc), fontSize: 12.0),
            ),
            SizedBox(width: 4.8),
          ],
        ),
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Color(0xff18191A),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "price"),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Color(0xffF5BB11),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Center(
                    child: Text(
                      "Book Now!",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  )),
            ),
          ),
          SizedBox(width: 12.0),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Color(0xffF5BB11)),
                borderRadius: BorderRadius.circular(15.0)),
            child: Icon(
              FontAwesomeIcons.phone,
              size: 36.0,
              color: Color(0xffF5BB11),
            ),
          ),
          SizedBox(width: 12.0),
          Container(
            padding: EdgeInsets.fromLTRB(8, 6, 8, 10),
            decoration: BoxDecoration(
                color: Color(0xff00E676),
                borderRadius: BorderRadius.circular(15.0)),
            child: Icon(
              FontAwesomeIcons.whatsapp,
              size: 40.0,
              color: Color(0xffffffff),
            ),
          ),
        ],
      ),
    );
  }
}
