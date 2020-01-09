import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
//      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
//          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle=newText;
              },
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}