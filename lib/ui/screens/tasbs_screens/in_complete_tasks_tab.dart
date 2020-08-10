import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo_App/models/task_model.dart';
import 'package:todo_App/providers/db_provider.dart';
import 'package:todo_App/ui/widgets/task_item.dart';

class InCompleteTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DBProvider>(
      builder: (context, value, child) {
        List<Task> allTasks = value.inCompleteTasks;
        return ListView.builder(
          itemCount: allTasks.length,
          itemBuilder: (context, index) {
            return TaskItem(allTasks[index]);
          },
        );
      },
    );
  }
}
