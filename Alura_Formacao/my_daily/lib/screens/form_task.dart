import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormTask extends StatefulWidget {
  const FormTask({super.key});

  @override
  State<FormTask> createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  final _formTaskKey = GlobalKey<FormState>();
  dynamic _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formTaskKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Cadastrar nova tarefa',
            style: TextStyle(color: Theme.of(context).colorScheme.surface),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Decrição'),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_selectedDate == null
                        ? 'Nenhuma data selecionada.'
                        : 'Data: ' +
                            DateFormat('dd/MM/y').format(_selectedDate)),
                    TextButton(
                        onPressed: () {
                          Future<DateTime?> selecioneUmaData = showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2018),
                                  lastDate: DateTime(2039))
                              .then((pickedDate) {
                            if (pickedDate == null) {
                              return;
                            }
                            setState(
                              () {
                                _selectedDate = pickedDate;
                              },
                            );
                            return null;
                          });
                        },
                        child: const Text('Selecione uma data')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
