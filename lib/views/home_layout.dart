import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/componants/custom_componants.dart';
import 'package:to_do_app/componants/custom_text_field.dart';
import 'package:to_do_app/componants/floating_action_button.dart';
import 'package:to_do_app/componants/no_available_combonant.dart';
import 'package:to_do_app/cubits/to_do_cubit.dart';
import 'package:to_do_app/cubits/to_do_cubit.dart';
import 'package:to_do_app/model/task_model.dart';
import '../componants/custom_icon_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeLayout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<ToDoCubit, ToDoState>(
        builder: (context, state) {
          var cubit = ToDoCubit.get(context);

          return Column(
            children: [
              Row(
                children: [
                  CustomBarItem(
                    itemName: 'Tasks',
                    onTap: () {
                      cubit.ChangeSelectdTaskItem(true);
                    },
                    isSelected: cubit.selectdTaskItem,
                  ),
                  CustomBarItem(
                    itemName: 'Done',
                    onTap: () {
                      cubit.ChangeSelectdDoneItem(true);
                    },
                    isSelected: cubit.selectdDoneItem,
                  ),
                  CustomBarItem(
                    itemName: 'Archive',
                    onTap: () {
                      cubit.ChangeSelectdArchiveItem(true);
                    },
                    isSelected: cubit.selectdArchiveItem,
                  ),
                ],
              ),
            ],
          );
        },
      ),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
