import 'package:flutter/material.dart';
import 'package:superior/widgets/carComponent.dart';
import 'package:superior/widgets/customSelector.dart';
import 'package:superior/widgets/navbar.dart';
import 'package:superior/widgets/searchBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var allCars = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 15.0),
        Text(
          "All Cars",
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SafeArea(
        child: ListView(
          children: [
            Navbar(),
            SearchBar(),
            CustomSelector(title: "Categories"),
            CustomSelector(title: "Brands"),
            SizedBox(height: 15.0),
            allCars,
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, "car"),
                child: CarComponent()),
          ],
        ),
      ),
    );
  }
}
