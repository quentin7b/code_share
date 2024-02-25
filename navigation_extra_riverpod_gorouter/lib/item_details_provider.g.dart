// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemDetailsHash() => r'24e9f288d6d4d0ff9ef2979f548ca5771493c1f1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ItemDetails extends BuildlessAutoDisposeAsyncNotifier<Item> {
  late final String id;
  late final Item? initialValue;

  FutureOr<Item> build(
    String id, {
    Item? initialValue,
  });
}

/// See also [ItemDetails].
@ProviderFor(ItemDetails)
const itemDetailsProvider = ItemDetailsFamily();

/// See also [ItemDetails].
class ItemDetailsFamily extends Family<AsyncValue<Item>> {
  /// See also [ItemDetails].
  const ItemDetailsFamily();

  /// See also [ItemDetails].
  ItemDetailsProvider call(
    String id, {
    Item? initialValue,
  }) {
    return ItemDetailsProvider(
      id,
      initialValue: initialValue,
    );
  }

  @override
  ItemDetailsProvider getProviderOverride(
    covariant ItemDetailsProvider provider,
  ) {
    return call(
      provider.id,
      initialValue: provider.initialValue,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'itemDetailsProvider';
}

/// See also [ItemDetails].
class ItemDetailsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ItemDetails, Item> {
  /// See also [ItemDetails].
  ItemDetailsProvider(
    String id, {
    Item? initialValue,
  }) : this._internal(
          () => ItemDetails()
            ..id = id
            ..initialValue = initialValue,
          from: itemDetailsProvider,
          name: r'itemDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemDetailsHash,
          dependencies: ItemDetailsFamily._dependencies,
          allTransitiveDependencies:
              ItemDetailsFamily._allTransitiveDependencies,
          id: id,
          initialValue: initialValue,
        );

  ItemDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.initialValue,
  }) : super.internal();

  final String id;
  final Item? initialValue;

  @override
  FutureOr<Item> runNotifierBuild(
    covariant ItemDetails notifier,
  ) {
    return notifier.build(
      id,
      initialValue: initialValue,
    );
  }

  @override
  Override overrideWith(ItemDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: ItemDetailsProvider._internal(
        () => create()
          ..id = id
          ..initialValue = initialValue,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        initialValue: initialValue,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ItemDetails, Item> createElement() {
    return _ItemDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemDetailsProvider &&
        other.id == id &&
        other.initialValue == initialValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, initialValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemDetailsRef on AutoDisposeAsyncNotifierProviderRef<Item> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `initialValue` of this provider.
  Item? get initialValue;
}

class _ItemDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ItemDetails, Item>
    with ItemDetailsRef {
  _ItemDetailsProviderElement(super.provider);

  @override
  String get id => (origin as ItemDetailsProvider).id;
  @override
  Item? get initialValue => (origin as ItemDetailsProvider).initialValue;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
