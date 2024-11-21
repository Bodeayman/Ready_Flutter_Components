class TaskList extends ChangeNotifier {
  // List to hold the tasks
  List<String> _tasks = [];

  // Getter for tasks
  List<String> get tasks => _tasks;

  // Load tasks from SharedPreferences
  Future<void> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final taskList = prefs.getStringList('tasks') ?? [];
    _tasks = taskList;
    notifyListeners();
  }

  // Add task and save to SharedPreferences
  Future<void> addTask(String task) async {
    _tasks.add(task);
    await _saveTasks();
    notifyListeners();
  }

  // Remove task and update SharedPreferences
  Future<void> removeTask(String task) async {
    _tasks.remove(task);
    await _saveTasks();
    notifyListeners();
  }

  // Save tasks to SharedPreferences
  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('tasks', _tasks);
  }
}



// When you use the main use this line
 create: (context) => TaskList()..loadTasks(),
