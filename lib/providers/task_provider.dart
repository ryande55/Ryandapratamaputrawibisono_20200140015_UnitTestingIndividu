// lib/providers/task_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void editTask(int index, String newTitle) {
    if (index >= 0 && index < _tasks.length) {
      _tasks[index].title = newTitle;
      notifyListeners();
    }
  }
}
