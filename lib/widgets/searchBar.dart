import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var borderInput = new OutlineInputBorder(
      gapPadding: 0,
      borderRadius: const BorderRadius.all(
        const Radius.circular(16.0),
      ),
    );
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 13.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0xff242424),
          filled: true,
          border: borderInput,
          enabledBorder: borderInput,
          focusedBorder: borderInput,
          hintText: "Search for a car",
          hintStyle: TextStyle(
              color: Color(0xff79797D),
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          prefixIcon: Icon(FontAwesomeIcons.search,
              color: Color(0xff79797D), size: 16.0),
          suffixIcon: Container(
            padding: EdgeInsets.fromLTRB(9.5, 10, 14.5, 10),
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                color: Color(0xffF5BB11),
                borderRadius: BorderRadius.circular(15.0)),
            child: Icon(FontAwesomeIcons.cogs,
                color: Color(0xff000000), size: 24.0),
          ),
        ),
      ),
    );
  }
}
