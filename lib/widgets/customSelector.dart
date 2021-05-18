import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSelector extends StatelessWidget {
  final title;
  CustomSelector({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16.0),
          ),
        ),
        SizedBox(height: 7.0),
        Container(
          height: 100.0,
          margin: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildIconBoxes(),
              buildIconBoxes(),
              buildIconBoxes(),
              buildIconBoxes(),
            ],
          ),
        ),
      ],
    );
  }

  Container buildIconBoxes() {
    return Container(
      margin: EdgeInsets.all(8.0),
      height: 60.0,
      width: 110.0,
      decoration: BoxDecoration(
        color: Color(0xff191919),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.carAlt,
              color: Color(0xffF5BB11),
              size: 36.0,
            ),
            SizedBox(height: 3.0),
            Text("Convertible", style: TextStyle(color: Color(0xff79797D)))
          ],
        ),
      ),
    );
  }
}
