import 'package:flutter/material.dart';
import 'package:notepad/views/string_chick/string_format.dart';
import 'model/task_model.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  List<dynamic> w = [];
  List<TaskModel> tasks = [
    TaskModel(title: 'Flutter'),
    TaskModel(title: 'API'),
    TaskModel(title: 'PROVIDER'),
    TaskModel(title: 'HTTP', subTitle: "SUB http"),
  ];
  @override
  Widget build(BuildContext context) {
    final title = TextEditingController();
    final subTitle = TextEditingController();

    return Scaffold(
        appBar: AppBar(title: Center(child: Text("MAC"))),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: Container(
                        width: 50,
                        height: 300,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.title),
                                  hintText: '',
                                  labelText: 'Title *',
                                  // errorText: 'Not Null',
                                ),
                                controller: title,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter Title';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.subtitles),
                                  hintText: '',
                                  labelText: 'Subtitle *',
                                ),
                                controller: subTitle,
                                onSaved: (value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter subTitle';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        tasks.add(TaskModel(
                                            title: title.text,
                                            subTitle: subTitle.text));
                                        Navigator.pop(context);
                                      });
                                    },
                                    color: Colors.green,
                                    child: Row(
                                      children: const [
                                        Text(
                                          'ADD',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    color: Colors.green,
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }),
        body: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever,
                      size: 30,
                    )),
                title: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(tasks[index].title),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(tasks[index].subTitle ?? ''),
                ),
                trailing: Checkbox(
                    value: tasks[index].isDone,
                    onChanged: (value) {
                      setState(() {
                        tasks[index].isDone = !tasks[index].isDone;
                      });
                    }),
              );
            }));
  }
}

// extension EmailValidator on String {
//   bool isValidEmail() {
//     return RegExp(
//             r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//         .hasMatch(this);
//   }
// }
