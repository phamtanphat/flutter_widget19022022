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
          showDialog(
              context: context,
              builder: (context){
                return Dialog(
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

                            },
                            child: Text("Save"),
                          )
                        )
                      ],
                    ),
                  ),
                );
              }
          );
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

          },
        ),
      ),
    );
  }


}
