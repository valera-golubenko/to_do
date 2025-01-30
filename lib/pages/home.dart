import 'package:flutter/material.dart';
import 'package:to_do/components/app_button.dart';
import 'package:to_do/components/todo_item.dart';
import 'package:to_do/models/task/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TaskModel> tasks = [
    TaskModel(taskName: 'task1', checked: false),
    TaskModel(taskName: 'task2', checked: false),
    TaskModel(taskName: 'task3', checked: false),
    TaskModel(taskName: 'task4', checked: false),
    TaskModel(taskName: 'task5', checked: false),
  ];

  void changed(bool? value, int index) {
    setState(() {
      tasks[index] = tasks[index].copyWith(
        checked: !tasks[index].checked,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "To Do",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D212B),
      ),
      body: Column(
        children: [
          const SizedBox(width: double.infinity, height: 10),
          Row(
            children: [
              AppButton(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withValues(alpha: 0.5),
                  ),
                  child: Text('Today'),
                ),
              ),
              const SizedBox(width: 10),
              AppButton(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withValues(alpha: 0.5),
                  ),
                  child: Text('Tomorrow'),
                ),
              ),
              const SizedBox(width: 10),
              AppButton(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withValues(alpha: 0.5),
                  ),
                  child: Text('All'),
                ),
              ),
              const SizedBox(width: 10),
              const Spacer(),
              AppButton(
                onTap: () {},
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.5),
                  ),
                  child: Icon(Icons.add),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => TodoItem(
                  taskName: tasks[index].taskName,
                  value: tasks[index].checked,
                  onChanged: (value) => changed(value, index)),
            ),
          ),
        ],
      )._wrap,
    );
  }
}

extension _WidgetExt on Widget {
  Widget get _wrap {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: this,
    );
  }
}
