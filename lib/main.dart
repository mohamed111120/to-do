import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/to_do_cubit.dart';
import 'package:to_do_app/views/home_layout.dart';

import 'cubits/cubit_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToDoCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomeLayout(

        ),
      ),
    );
  }
}
