import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget19022022/model/todo_model.dart';
class DemoListView extends StatefulWidget {

  @override
  State<DemoListView> createState() => _DemoListViewState();
}

class _DemoListViewState extends State<DemoListView> {

  final List<ToDoModel> mListTodos = ToDoModel.getMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Listview"),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: mListTodos.length,
          itemBuilder: (context , position){
            return itemListView(mListTodos[position]);
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

          },
        ),
      ),
    );
  }
}
