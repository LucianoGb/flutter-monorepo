import 'package:flutter/material.dart';
import 'package:widgets/components/task.dart';
import 'package:widgets/data/task_dao.dart';
// import 'package:widgets/data/task_inherited.dart';
import 'package:widgets/screens/form_screen.dart';

class HomePage extends StatefulWidget {
  final dynamic color;
  const HomePage({super.key, this.color});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(240, 232, 211, 1),
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Task>>(
            future: TaskDao().findAll(),
            builder: (context, snapshot) {
              List<Task>? itens = snapshot.data;
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando')
                      ],
                    ),
                  );
                // break;
                case ConnectionState.waiting:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando')
                      ],
                    ),
                  );
                // break;
                case ConnectionState.active:
                  return Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando')
                      ],
                    ),
                  );
                // break;
                case ConnectionState.done:
                  // print('entrei no done');
                  if (snapshot.hasData && itens != null) {
                    if (itens.isNotEmpty) {
                      return ListView.builder(
                          itemCount: itens.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Task task = itens[index];
                            return task;
                          });
                    }
                    return const Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 128,
                          ),
                          Text(
                            'Não existe tarefa cadastrada',
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    );
                  }
                  return const Center(child: Text('Erro carregar Tarefas'));
                // break;
              }
            }
            // return const Text('Erro desconhecido');
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          ).then((value) => setState(() {
                // print('Recarregando');
              }));
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
