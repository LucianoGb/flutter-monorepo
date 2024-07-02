import 'package:flutter/material.dart';
import 'package:widgets/components/task.dart';
import 'package:widgets/data/task_dao.dart';
import 'package:widgets/data/task_inherited.dart';

class FormScreen extends StatefulWidget {
  final BuildContext taskContext;
  // const FormScreen({super.key, required this.taskContext});
  const FormScreen({super.key, required this.taskContext});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController difficultyControler = TextEditingController();
  TextEditingController imageControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  bool difficultyValidator(String? value) {
    if (value != null && value.isEmpty) {
      if (int.parse(value) > 5 || int.parse(value) < 1) {
        return true;
      }
      return false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.surface),
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Nova Tarefa',
            style: TextStyle(color: Theme.of(context).colorScheme.surface),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: nameControler,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nome',
                          fillColor: Colors.white70,
                          filled: true),
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira o nome da Tarefa';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: difficultyControler,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Difficulty',
                          fillColor: Colors.white70,
                          filled: true),
                      validator: (value) {
                        if (difficultyValidator(value)) {
                          return 'Insira uma Dificuldade entre 1 e 5';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.url,
                      textAlign: TextAlign.center,
                      controller: imageControler,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Image',
                          fillColor: Colors.white70,
                          filled: true),
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira uma url de Imagem';
                        }
                        return null;
                      },
                      onChanged: (text) {
                        setState(() {
                          imageControler;
                        });
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 72,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 2)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageControler.text,
                            fit: BoxFit.cover,
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return Container(
                                child: const Icon(Icons.camera_alt),
                              );
                            },
                          ),
                        ),
                      )),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).primaryColor)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // print(nameControler.text);
                        // print(difficultyControler.text);
                        // print(imageControler.text);
                        // TaskInherited.of(widget.taskContext).newTask(
                        //     name: nameControler.text,
                        //     foto: imageControler.text,
                        //     difficulty: int.parse(difficultyControler.text));
                        TaskDao().save(Task(
                            name: nameControler.text,
                            foto: imageControler.text,
                            dificuldade: int.parse(difficultyControler.text)));
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Criando nova tarefa.')));
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Adicionar',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
