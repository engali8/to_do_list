import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/Settings/settings_tab.dart';
import 'package:to_do_list/Task_List/Task_list.dart';
import 'package:to_do_list/Task_List/add_task_bottom_sheet.dart';
class HomeScreen extends StatefulWidget {
static String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To DO List',
        style: Theme.of(context).textTheme.headline1
        ),
      ),
     bottomNavigationBar :
     BottomAppBar(
       shape: CircularNotchedRectangle(),
       notchMargin: 12,
       child: BottomNavigationBar(
         currentIndex:selectedIndex ,
         onTap: (index){
           selectedIndex = index;
           setState(() {

           });
         },
         items: [
           BottomNavigationBarItem(
               icon: ImageIcon(
                 AssetImage('assets/images/task_list_icon.png')
               ),
           label:'Task List'
           ),
           BottomNavigationBarItem(
               icon: ImageIcon(
                   AssetImage('assets/images/settings_icon.png')
               ),
               label:'Settings'
           )
        ],
        ),
     ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked ,
      body: tabs[selectedIndex],
    );
  }
  List<Widget>tabs = [TaskList(),SettingsTab()];
  void showBottomSheet(){
    showModalBottomSheet(
        context: context,
        builder: (context){
        return AddTaskBottomSheet();
        }
    );
  }
}
