part of 'to_do_cubit.dart';

@immutable
abstract class ToDoState {}

  class ToDoInitial extends ToDoState {}
class ToDoTaskPage extends ToDoState{}
class ToDoDonePage extends ToDoState{}
class ToDoArchivePage extends ToDoState{}

class AddTaskState extends ToDoState{}


