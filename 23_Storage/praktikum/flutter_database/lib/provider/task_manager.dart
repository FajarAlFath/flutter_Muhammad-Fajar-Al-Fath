import 'package:flutter/material.dart';
import 'package:flutter_database/model/task_model.dart';

class TaskManager extends ChangeNotifier{
  final _taskModels = <TaskModel>[];
  List<TaskModel> get taskModel => List.unmodifiable(_taskModels);

  void deleteTask (int index){
    _taskModels.remove(index);
    notifyListeners();
  }

  void addTask(TaskModel task){
    _taskModels.add(task);
    notifyListeners();
  }
}