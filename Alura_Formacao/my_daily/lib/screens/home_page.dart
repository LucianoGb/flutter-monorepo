import 'package:flutter/material.dart';
import 'package:my_daily/widgets/task.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Daily',
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        // margin: EdgeInsets.all(10),
        color: Color.fromRGBO(195, 199, 246, 1),
        child: Column(
          children: [
            Task(
              name: 'Tarefa 1',
              date: '01/12/2012',
              priority: '',
            ),
            Task(
              name: 'Tarefa 2',
              date: '01/12/2012',
              priority: '',
            ),
            Task(
              name: 'Tarefa 3',
              date: '01/12/2012',
              priority: '',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
