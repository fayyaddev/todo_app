import 'package:todo_App/repositories/db_client.dart';

class Task {
  int id;
  String title;
  String description;
  bool isComplete;
  Task({this.title, this.isComplete = false, this.description});
  Task.fromJson(Map<String, dynamic> map) {
    this.id = map[DBClient.dbClient.taskIdColumn];
    this.title = map[DBClient.dbClient.taskTiltleColumn];
    this.description = map[DBClient.dbClient.taskDescriptionColumn];
    this.isComplete =
        map[DBClient.dbClient.taskIsCompleteColumn] == 1 ? true : false;
  }
  toJson() {
    return {
      DBClient.dbClient.taskTiltleColumn: this.title,
      DBClient.dbClient.taskTiltleColumn: this.description,
      DBClient.dbClient.taskIsCompleteColumn: this.isComplete ? 1 : 0
    };
  }

  toggleTask() {
    this.isComplete = !this.isComplete;
  }
}
