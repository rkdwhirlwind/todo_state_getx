import 'package:todo_state_getx/common/common.dart';
import 'package:todo_state_getx/common/dart/extension/color_extension.dart';
import 'package:todo_state_getx/screen/main/tab/todo/w_todo_list.dart';
import 'package:flutter/material.dart';

class TodoFragment extends StatefulWidget {
  const TodoFragment({super.key});

  @override
  State<TodoFragment> createState() => _TodoFragmentState();
}

class _TodoFragmentState extends State<TodoFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.seedColor.getSwatchByBrightness(100),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu),
              )
            ],
          ),
          Expanded(child: const TodoList().pSymmetric(h: 15)),
        ],
      ),
    );
  }
}
