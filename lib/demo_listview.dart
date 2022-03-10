import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget19022022/model/todo_model.dart';
class DemoListView extends StatefulWidget {

  @override
  State<DemoListView> createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {

  late List<ToDoModel> listToDo;

  @override
  void initState() {
    super.initState();
    listToDo = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Listview"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showInsertDialog(context,list: listToDo);
        },
        child: Icon(Icons.add_outlined),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: listToDo.length,
          itemBuilder: (context , position){
            if(listToDo.isNotEmpty){
              return itemListView(listToDo[position]);
            }
            return SizedBox();
          },
          separatorBuilder: (context , position){
            return const SizedBox(height: 10,);
          },
        ),
      ),
    );
  }

  Widget itemListView(ToDoModel toDoModel){
    return Card(
      child: ListTile(
        title: Text(toDoModel.title),
        subtitle: Text(toDoModel.description),
        trailing: IconButton(
          icon: Icon(Icons.delete , color: Colors.red,),
          onPressed: (){
            showDeleteDialog(context ,toDoModel);
          },
        ),
      ),
    );
  }

  void showInsertDialog(BuildContext context ,{List<ToDoModel>? list}){
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    showDialog(
        context: context,
        builder: (context){
          return Dialog(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                      child: Text("Add New Work" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                      child: TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Title"
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                      child: TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Description"
                        ),
                        maxLines: 5,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height / 18,
                        color: Colors.teal,
                        child: ElevatedButton(
                          onPressed: (){
                            String title = titleController.text.toString();
                            String description = descriptionController.text.toString();

                            if(title.isEmpty || description.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Title or description is empty")));
                              return;
                            }
                            setState(() {
                              list?.add(ToDoModel(title: title, description: description));
                              Navigator.pop(context);
                            });
                          },
                          child: Text("Save"),
                        )
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  void showDeleteDialog(BuildContext context , ToDoModel model){
    if(Platform.isAndroid){
      showDialog<void>(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Are you sure delete item?'),
            actions: <Widget>[
              TextButton(
                child: Text('ok'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ],
          );
        },
      );
      return;
    }
    showCupertinoDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return CupertinoAlertDialog(
            title: Text('Alert'),
            content: Text('Are you sure delete item?'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ],
          );
        },
    );
  }
}
