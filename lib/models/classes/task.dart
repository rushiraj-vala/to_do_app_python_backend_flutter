class Task {
  late List<Task> tasks;
  late String note;
  late DateTime timeToComplete;
  late bool completed;
  late String repeats;
  late DateTime deadline;
  late List<DateTime> reminder;
  late String taskId;
  late String title;

  Task({required this.title, required this.completed, required this.taskId});
}
