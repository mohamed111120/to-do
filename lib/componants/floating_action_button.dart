import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/to_do_cubit.dart';
import 'custom_text_field.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToDoCubit, ToDoState>(
      builder: (context, state) {
        var cubit = ToDoCubit.get(context);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => BlocBuilder<ToDoCubit, ToDoState>(
                    builder: (context, state) {
                      var cubit = ToDoCubit.get(context);
                      return SingleChildScrollView(
                        child: Center(
                          child: AlertDialog(
                            title: Text(
                              'Add Task',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomTextField(
                                  controller: cubit.titleController,
                                  hintText: 'taskTitle',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomTextField(
                                  clickable: TextInputType.none,
                                  hintText: 'Date',
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2030),
                                    ).then((value) => cubit.dateController
                                        .text = value.toString());
                                  },
                                  controller: cubit.dateController,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomTextField(
                                  hintText: 'Time',
                                  controller: cubit.timeController,
                                ),
                              ],
                            ),
                            actions: [
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: SizedBox(
                                  width: 200,
                                  height: 50,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        cubit.addTask();
                                        Navigator.pop(context);
                                        cubit.titleController.clear();
                                        cubit.dateController.clear();
                                        cubit.timeController.clear();
                                      },
                                      child: Text(
                                        'Add',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              child: Text('+'),
            ),
            SizedBox(height: 50, width: 100),
          ],
        );
      },
    );
  }
}
