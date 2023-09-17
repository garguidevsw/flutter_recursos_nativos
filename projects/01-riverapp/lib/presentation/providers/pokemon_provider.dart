import 'package:riverapp/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final name = await PokemonService.getPokemonName(pokemonId);
  return name;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() {
    return 1;
  }

  void nextPokemonId() {
    state++;
  }

  void prevPokemonId() {
    if (state > 1) {
      state--;
    }
  }
}

// @riverpod
// int pokemonId(PokemonIdRef ref) {
//   return 1;
// }
