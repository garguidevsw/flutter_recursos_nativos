import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'random_name_provider.g.dart';

@riverpod
String randomName(RandomNameRef ref) {
  return 'Julio García';
}

@Riverpod(keepAlive: true)
class RandomNameGn extends _$RandomNameGn {
  @override
  String build() {
    return 'Julio García';
  }

  void changeName(String name) {
    state = name;
  }
}
