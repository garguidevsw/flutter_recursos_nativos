import 'package:riverapp/config/config.dart';
import 'package:riverapp/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
part 'todos_provider.g.dart';

const uuid = Uuid();

@Riverpod(keepAlive: true)
class TodosNotifier extends _$TodosNotifier {
  @override
  List<Todo> build() {
    return [
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null)
    ];
  }

  void addTodo() {
    state = [
      Todo(
          id: uuid.v4(),
          description: RandomNameGenerator.getRandomName(),
          completedAt: null),
      ...state
    ];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        todo = todo.copyWith(completedAt: todo.done ? null : DateTime.now());
      }
      return todo;
    }).toList();
  }
}
