import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161F50),
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, right: 20.0, left: 47.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(),
                Align(
                  alignment: Alignment(0.2, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff3D47AF),
                      radius: 30.0,
                      child: Image.asset(
                        'images/back.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
            CircleAvatar(
              radius: 50.0,
              child: Image.asset(
                'images/ellipce.png',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Joy ',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            Text(
              'Mitchell',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Image.asset(
                  'images/bookmark.png',
                  width: 27.0,
                  height: 27.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Templates',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Image.asset(
                  'images/app.png',
                  width: 27.0,
                  height: 27.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Image.asset(
                  'images/chart_pie.png',
                  width: 27.0,
                  height: 27.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Analytics',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Image.asset(
                  'images/setting.png',
                  width: 27.0,
                  height: 27.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              'images/chart_line.png',
              width: 250.0,
              height: 100.0,
            ),
            Text(
              'Good',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3D47AF)),
            ),
            Text(
              'Consistency',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

/*
Container(
margin: EdgeInsets.only(top: 60.0),
height: 100.0,
width: 300.0,
child: Stack(
children: [
CircleAvatar(
radius: 60.0,
child: Image.asset(
'images/ellipce.png',
),
),
Positioned(
child: GestureDetector(
child: CircleAvatar(
child: Image.asset('images/back.png',),
radius: 30.0,
),
onTap: () {},
),
top: 0.0,
right: 70.0,
)
],
),
),


 */
