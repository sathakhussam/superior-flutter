import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "home"),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.0, vertical: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF5BB11)),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Color(0xffF5BB11),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage('assets/img/logo.png'),
                    height: 104.0,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Luxury Car\n Rental Dubai",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Rent your dream car on daily \nor hourly basis.",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF5BB11),
                          borderRadius: BorderRadius.circular(15.0)),
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25.0),
                      child: Text(
                        "Sign Up with Email ID",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15.0)),
                      padding: EdgeInsets.all(15.0),
                      margin:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign Up with Google",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        " Sign In",
                        style: TextStyle(
                          color: Color(0xffF5BB11),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                ],
              )
            ]),
      ),
    );
  }
}
