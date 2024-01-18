import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/task_model.dart';

part 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInitial());

  static ToDoCubit get(context) => BlocProvider.of<ToDoCubit>(context);

  bool selectdTaskItem = false;
  bool selectdDoneItem = false;
  bool selectdArchiveItem = false;

  List<TasksModel> tasks = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  ChangeSelectdTaskItem(value) {
    selectdTaskItem = value;
    selectdDoneItem = false;
    selectdArchiveItem = false;
    emit(ToDoTaskPage());
  }

  ChangeSelectdDoneItem(value) {
    selectdDoneItem = value;
    selectdArchiveItem = false;
    selectdTaskItem = false;
    emit(ToDoDonePage());
  }

  ChangeSelectdArchiveItem(value) {
    selectdArchiveItem = value;
    selectdTaskItem = false;
    selectdDoneItem = false;

    emit(ToDoArchivePage());
  }

  addTask() {
    tasks.add(TasksModel(
        taskName: titleController.text,
        date: dateController.text,
        time: timeController.text));

    emit(AddTaskState());
  }
}
