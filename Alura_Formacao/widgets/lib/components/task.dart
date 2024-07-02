import 'package:flutter/material.dart';
import 'package:widgets/components/difficulty.dart';
import 'package:widgets/data/task_dao.dart';

class Task extends StatefulWidget {
  final String name;
  final String foto;
  final int dificuldade;
  Task(
      {super.key,
      required this.name,
      required this.foto,
      required this.dificuldade});

  int nivel = 0;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool assetOrNetwork() {
    if (widget.foto!.contains('http')) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Theme.of(context).primaryColor),
          height: 140,
        ),
        Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 201, 200, 200),
                      ),
                      width: 80,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: assetOrNetwork()
                            ? Image.asset(
                                widget.foto.toString(),
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                widget.foto.toString(),
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.name!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ),
                        Difficulty(
                          difficyltyLevel: widget.dificuldade,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(8, 6))),
                              backgroundColor: Theme.of(context).primaryColor),
                          onPressed: () {
                            setState(() {
                              widget.nivel++;
                            });
                          },
                          onLongPress: () {
                            TaskDao().delet(widget.name);
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_drop_up_outlined,
                                color: Colors.white,
                              ),
                              Text('UP', style: TextStyle(color: Colors.white))
                            ],
                          )),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      color: Color.fromARGB(255, 251, 184, 51),
                      value: (widget.dificuldade > 0)
                          ? (widget.nivel / widget.dificuldade) / 10
                          : 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Nível: ${widget.nivel}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
