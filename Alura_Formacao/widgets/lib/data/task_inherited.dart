import 'package:flutter/material.dart';
import 'package:widgets/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required super.child});

  final List<Task> taskList = [
    Task(
      name: "Tarefa 1",
      foto: 'assets/images/image.png',
      dificuldade: 4,
    ),
    Task(
      name: "Tarefa 2",
      foto: 'assets/images/image2.jpg',
      dificuldade: 3,
    ),
    Task(
      name: "Tarefa 4",
      foto: 'assets/images/image3.png',
      dificuldade: 1,
    ),
    Task(
      name: "Tarefa 4",
      foto: 'assets/images/image4.jpg',
      dificuldade: 2,
    )
  ];

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  void newTask(
      {required String name, required String foto, required int difficulty}) {
    taskList.add(Task(name: name, foto: foto, dificuldade: difficulty));
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
