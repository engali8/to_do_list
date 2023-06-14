import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              'Add New Task',
              style: Theme.of(context).textTheme.headline2,
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Task Title'),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter Task description'),
                  maxLines: 4,
                ),
                SizedBox(
                  height: 12,
                ),
                Text('Selecte Date',
                    style: Theme.of(context).textTheme.headline2),
                SizedBox(
                  height: 12,
                ),
                Text(
                  '25/5/2023',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: Theme.of(context).textTheme.headline1,
                    ))
              ],
            ))
          ],
        ));
  }
}
