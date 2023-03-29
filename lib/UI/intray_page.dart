import 'package:flutter/material.dart';
import 'package:to_do_app_python_backend/models/classes/task.dart';
import 'package:to_do_app_python_backend/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  const IntrayPage({super.key});

  @override
  State<IntrayPage> createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  // final values = ['1', '2', '3', '4', '5'];
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    tasks = getTaskList();

    return Container(
      padding: EdgeInsets.only(top: 150),
      color: Colors.white,
      child: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) newIndex--;
            final value = tasks.removeAt(oldIndex);
            tasks.insert(newIndex, value);
          });
        },
        children: tasks
            .map((Task e) => _BuildListTitleFromTaskList(context, e))
            .toList(),
      ),
    );
  }

  List<Task> getTaskList() {
    for (int i = 0; i < 10; i++) {
      tasks.add(Task(
          title: "My $i item in list", completed: false, taskId: i.toString()));
    }
    return tasks;
  }

  Widget _BuildListTitleFromTaskList(
    BuildContext context,
    Task taskItem,
  ) {
    return ListTile(
      key: Key(taskItem.taskId),
      title: IntrayToDo(textTitle: taskItem.title, key: Key(taskItem.taskId)),
    );
  }
}
