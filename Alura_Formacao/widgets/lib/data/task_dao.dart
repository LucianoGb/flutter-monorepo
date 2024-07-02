// ignore_for_file: avoid_print

import 'dart:ffi';

import 'package:sqflite/sqflite.dart';
import 'package:widgets/components/task.dart';
import 'package:widgets/data/database.dart';

class TaskDao {
  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT,'
      '$_difficulty INTEGER,'
      '$_image TEXT)';

  save(Task task) async {
    // print('Acessando o save');
    final Database database = await getDatabase();
    var itemExist = await find(task.name);
    Map<String, dynamic> taskMap = toMap(task);
    if (itemExist.isEmpty) {
      // ignore: avoid_print
      // print('taks não existia');
      return await database.insert(_tablename, taskMap);
    } else {
      // print('task existente');
      return await database.update(_tablename, taskMap,
          where: '$_name = ?', whereArgs: [task.name]);
    }
  }

  Future<List<Task>> findAll() async {
    // print('Acessando o findAll:');
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> result = await database.query(_tablename);
    // print('Procurando dados no db.... encontrado: $result');
    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> mapOfTaks) {
    // print('Acessando toList');
    final List<Task> tarefas = [];
    for (Map<String, dynamic> linha in mapOfTaks) {
      final Task task = Task(
          name: linha[_name],
          foto: linha[_image],
          dificuldade: linha[_difficulty]);
      tarefas.add(task);
    }
    // print('Lista de tarefas: $tarefas');
    return tarefas;
  }

  Future<List<Task>> find(String nameTask) async {
    // print('Acessando o find');
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> result = await database
        .query(_tablename, where: '$_name = ?', whereArgs: [nameTask]);
    // print('Tarefa encontrada ${toList(result)}');
    return toList(result);
  }

  Map<String, dynamic> toMap(Task task) {
    // print('Convertendo task to map');
    final Map<String, dynamic> mapOfTask = Map();
    mapOfTask[_name] = task.name;
    mapOfTask[_difficulty] = task.dificuldade;
    mapOfTask[_image] = task.foto;

    // print('map de task : $mapOfTask');
    return mapOfTask;
  }

  delet(String nameTask) async {
    // print('Deletando uma taks');
    final Database database = await getDatabase();
    return database
        .delete(_tablename, where: '$_name = ?', whereArgs: [nameTask]);
  }
}
