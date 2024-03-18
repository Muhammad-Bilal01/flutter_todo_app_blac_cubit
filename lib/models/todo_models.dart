// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  final String title;
  final String createdAt;

  Todo({required this.title, required this.createdAt});

  @override
  String toString() => 'Todo(title: $title, createdAt: $createdAt)';
}
