import 'todo_status.dart';

class Todo {
  Todo({
    required this.id,
    required this.title,
    required this.dueDate,
    this.status = TodoStatus.incomplete,
  }) : createdTime = DateTime.now(); // Todo가 생성되는 시점에 createdTime 생성

  int id;
  String title;
  final DateTime createdTime;
  DateTime? modifyTime;
  DateTime dueDate;
  TodoStatus status;
}