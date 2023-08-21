class ToDoItem {
  String title;
  bool completed;

  ToDoItem(this.title) : completed = false;
}

List<ToDoItem> toDoList = [];

void addNewItem(String title) {
  ToDoItem newItem = ToDoItem(title);
  toDoList.add(newItem);
}

void markAsCompleted(int index) {
  if (index >= 0 && index < toDoList.length) {
    toDoList[index].completed = true;
  }
}

void displayToDoList() {
  print("To-Do List:");
  for (int index = 0; index < toDoList.length; index++) {
    String status = toDoList[index].completed ? "✅" : "❌";
    print("${index + 1}. $status ${toDoList[index].title}");
  }
}

void main() {
  addNewItem("Buy groceries");
  addNewItem("Finish homework");
  markAsCompleted(0);
  displayToDoList();
}
