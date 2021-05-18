import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 30 - 20;
    var height = 190 / 310 * width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color(0xff242424).withOpacity(0.53),
          borderRadius: BorderRadius.circular(32.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image(
              image: NetworkImage(
                  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-lamborghini-huracan-evo-mmp-1-1600293029.jpg?crop=1.00xw:0.844xh;0,0.120xh&resize=1200:*"),
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Ferrari 488 Spider",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20.0),
          ),
          Row(
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
          ),
          SizedBox(height: 10.0),
          Row(
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
          ),
          SizedBox(height: 6.0),
          Divider(
            color: Color(0xff242424),
            thickness: 2,
          ),
          SizedBox(height: 6.0),
          Row(
            children: [
              Expanded(
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
              SizedBox(width: 12.0),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Color(0xffF5BB11)),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Icon(
                  FontAwesomeIcons.phone,
                  size: 25.0,
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
                  size: 27.0,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
