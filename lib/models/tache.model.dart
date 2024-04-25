class Tache {
  String? id;
  String? todoText;
  bool isDone;

  Tache({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Tache> todoList() {
    return [
      Tache(id: '01', todoText: 'Morning Excercise', isDone: true ),
      Tache(id: '02', todoText: 'Buy Groceries', isDone: true ),
      Tache(id: '03', todoText: 'Check Emails', ),
      Tache(id: '04', todoText: 'Team Meeting', ),
      Tache(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      Tache(id: '06', todoText: 'Dinner with Jenny', ),
    ];
  }
}