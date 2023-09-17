import 'package:riverapp/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'random_names_provider.g.dart';

@riverpod
Stream<String> namesStream(NamesStreamRef ref) async* {
  await for (final name in RandomNameGenerator.randomNamesStream()) {
    yield name;
  }
}

// @riverpod
// Stream<List<String>> namesStream(NamesStreamRef ref) async* {
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];

//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Mayrin'];

//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Mayrin', 'Julio'];

//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Mayrin', 'Julio', 'El mundo'];
// }
