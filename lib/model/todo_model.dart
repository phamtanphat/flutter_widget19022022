import 'dart:ffi';

class ToDoModel {
  late String title;
  late String description;

  ToDoModel({required this.title, required this.description});

  @override
  String toString() {
    return 'ToDoModel{title: $title, description: $description}';
  }

  static List<ToDoModel?> getMock() {
    return List.generate(11, (index) {
      if(index == 10){
        return null;
      }
      return ToDoModel(
          title: "Title ${index + 1}",
          description: "Do something ${index + 1} ");
    });
  }
}
