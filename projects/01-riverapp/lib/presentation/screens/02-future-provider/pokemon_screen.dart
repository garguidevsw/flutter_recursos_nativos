import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/presentation/providers/pokemon_provider.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonNameProvider);

    final pokemonId = ref.watch(pokemonIdProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon ID: $pokemonId'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (value) => Text(value),
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn+',
            child: const Icon(Icons.plus_one),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).nextPokemonId();
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn-',
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).prevPokemonId();
            },
          ),
        ],
      ),
    );
  }
}
