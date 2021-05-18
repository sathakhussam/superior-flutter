import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CarPricingInfo extends StatelessWidget {
  const CarPricingInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff242424), borderRadius: BorderRadius.circular(15.0)),
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/1-ferrari-sf90-stradale-2020-fd-hero-front_0.jpg?itok=SEGd1tLc"),
                height: 50.0,
                width: 60.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Ferrari 488 Spider",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0)),
          Container(
            padding: EdgeInsets.fromLTRB(4, 3, 4, 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color(0xff191919)),
            child: Icon(Octicons.x, size: 28.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
