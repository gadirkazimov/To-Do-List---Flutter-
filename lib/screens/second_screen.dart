import 'package:figma_project/screens/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:figma_project/model/task.dart';
import 'package:figma_project/widgets/task_list.dart';
import 'package:figma_project/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Task> tasks = [
    Task(name: 'Daily meeting with team'),
    Task(name: 'Pay for rent'),
    Task(name: 'Check email'),
    Task(name: 'Lunch with Emma'),
    Task(name: 'Meditation')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ThirdScreen((newTaskTitle) {
                        setState(() {
                          tasks.add(Task(name: newTaskTitle));
                        });
                        Navigator.pop(context);
                      })));
        },
        backgroundColor: const Color(0Xff2E67F6),
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color(0XffF5F6FD),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(
              top: 60.0, right: 28.0, bottom: 28.0, left: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                      child: Image.asset('images/menu.png'),
                      onTap: () {
                        Navigator.pushNamed(context, '/firstscreen');
                      }),
                  const SizedBox(width: 230.0),
                  Image.asset('images/search.png'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Image.asset('images/message.png')
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              const Text(
                'What\'s up Joy!',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'CATEGORIES',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0Xff9D9AB4)),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 28.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 17.0, right: 17.0, bottom: 17.0),
                  height: 145.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '40 tasks',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0Xff9D9AB4)),
                      ),
                      const Text(
                        'Business',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Slider(
                        value: 9.0,
                        min: 1,
                        max: 18,
                        activeColor: const Color(0xffDE19EF),
                        inactiveColor: const Color(0xffF4F6FD),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue);
                          });
                        },
                      )
                    ],
                  )),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 17.0, right: 17.0, bottom: 17.0),
                  height: 145.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '18 tasks',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0Xff9D9AB4)),
                      ),
                      const Text(
                        'Personal',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Slider(
                        value: 9.0,
                        min: 1,
                        max: 18,
                        activeColor: const Color(0xff0869FF),
                        inactiveColor: const Color(0xffF4F6FD),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue);
                          });
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TaskList(tasks)),
        )
      ]),
    );
  }
}

/*
Container(
padding: EdgeInsets.all(5.0),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10.0),
color: Colors.white),
child: CheckboxListTile(
value: isChecked,
onChanged: (bool? newValue) {
setState(() {
isChecked = newValue;
});
},
activeColor: Color(0XFFDE19EF),
checkColor: Colors.white,
title: Text('Daily meeting with team'),
controlAffinity: ListTileControlAffinity.leading,
),
),

 */

/*
child: ListView(
children: [
ListTile(
title: Text('data'),
leading: Icon(Icons.add),
),
ListTile(
title: Text('bbb'),
)
],
),

*/
/*
Text(
'TODAY\'S TASKS',
style: TextStyle(
fontFamily: 'Poppins',
fontSize: 16.0,
fontWeight: FontWeight.w500,
color: Color(0XFF9D9AB4)),
),
SizedBox(
height: 14.0,
),


 */
