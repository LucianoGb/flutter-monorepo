import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task extends StatefulWidget {
  String name;
  String date;
  String? priority;
  Task(
      {super.key,
      required this.name,
      required this.date,
      required this.priority});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 241, 239, 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              offset: Offset(2, 3)),
        ],
      ),
      child: ListTile(
        leading: Icon(
          Icons.assignment,
          color: Colors.greenAccent[700],
        ),
        title: Text(widget.name),
        subtitle: Text(widget.date),
        trailing: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Clicou')));
            },
            icon: Icon(
              Icons.edit_document,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            )),
      ),
    );
  }
}
