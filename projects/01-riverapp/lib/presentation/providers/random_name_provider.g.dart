// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_name_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$randomNameHash() => r'015d5c3585f98e610695b5c5f2c60266d3d3039c';

/// See also [randomName].
@ProviderFor(randomName)
final randomNameProvider = AutoDisposeProvider<String>.internal(
  randomName,
  name: r'randomNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RandomNameRef = AutoDisposeProviderRef<String>;
String _$randomNameGnHash() => r'c37eec6cddfcaddc3ba04909fd077b2b7a306c0d';

/// See also [RandomNameGn].
@ProviderFor(RandomNameGn)
final randomNameGnProvider = NotifierProvider<RandomNameGn, String>.internal(
  RandomNameGn.new,
  name: r'randomNameGnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomNameGnHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RandomNameGn = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
