import 'package:flutter/material.dart';
import 'package:figma_project/model/task.dart';
import 'package:figma_project/widgets/task_list.dart';

class ThirdScreen extends StatelessWidget {
  final Function addTaskCallback;

  ThirdScreen(this.addTaskCallback);

  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: 100.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(),
                Align(
                  alignment: Alignment(1, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: Image.asset(
                        'images/close.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 150.0, left: 50.0, right: 30.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (newValue) {
                      newTaskTitle = newValue;
                    },
                  ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 14.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border:
                                Border.all(color: Color(0XffADBAEB), width: 2)),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/calendar.png',
                            ),
                            SizedBox(width: 15.0),
                            Text('Today')
                          ],
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 18.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                  color: Color(0XffADBAEB), width: 2.0)),
                          child: Image.asset('images/ellipce.png'))
                    ],
                  ),
                  SizedBox(height: 55.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/folder.png',
                        ),
                        SizedBox(width: 30.0),
                        Image.asset('images/moon.png'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (newTaskTitle != null && newTaskTitle.isNotEmpty) {
                        addTaskCallback(newTaskTitle);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 130, left: 85.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 18.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0Xff0869FF)),
                        child: Row(
                          children: [
                            Text(
                              'New Task',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset('images/up.png')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
