import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/My_theme.dart';

class TaskWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: MyThemeData.whiteColor,
        borderRadius: BorderRadius.circular(12)
      ),
        child: Row(
          children: [
            Container(
              color: MyThemeData.primaryDark,
              height: 80,
              width: 4,
            ),
            Expanded(
                child:Column(
                  children: [
                    Text('Task 1'),
                    Text('Task 2'),


                  ],
                )
            ),Container(
              padding: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: MyThemeData.primaryLight,
              ),
              child: Icon(Icons.check,color: Colors.white ,size:40 ,),
            )
          ],
        ),

    );
  }
}
