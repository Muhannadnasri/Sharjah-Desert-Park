import 'package:flutter/material.dart';

import 'home.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Successful !!',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF303030),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Text(
              'Your payment has been send to your email successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF808080),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 24),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color(0xFFa2e1a6),
              textColor: Color(0xFFFFFFFF),
              highlightColor: Colors.transparent,
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                });
              },
              child: Text('Ok'.toUpperCase()),
            ),
          ),
          // DefaultButton(
          //   btnText: 'Ok',
          //   onPressed: () => Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => BottomNavBar(0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
