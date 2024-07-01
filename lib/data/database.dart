import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //Reference our box

  final _myBox = Hive.box("myBox");

  // Add a new item to the list
  // Run this the 1st time we run this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Make App", false],
      ["Do Exercise", false],
    ];
  }
  // Load Data from the database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update data
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
