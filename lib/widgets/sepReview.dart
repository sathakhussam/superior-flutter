import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SepReview extends StatelessWidget {
  const SepReview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color(0xff242424).withOpacity(.53),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Robert James",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "12 May 2020",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff79797D),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
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
          SizedBox(height: 15.0),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci egestas mauris varius ut vitae. Eget nibh ipsum dictum in amet. Nunc fringilla sagittis, vulputate dictum. Urna eleifend nulla libero ipsum in viverra tortor integer. Dolor erat tristique in massa ut turpis. In.",
            style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff999999),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
