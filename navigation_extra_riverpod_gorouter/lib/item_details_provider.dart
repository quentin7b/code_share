import 'package:navigation_extra_riverpod_gorouter/item_model.dart';
import 'package:navigation_extra_riverpod_gorouter/item_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_details_provider.g.dart';

@riverpod
class ItemDetails extends _$ItemDetails {
  @override
  FutureOr<Item> build(
    String id, {
    Item? initialValue,
  }) {
    if (initialValue != null) {
      return initialValue;
    }
    return ref.read(itemServiceProvider).getItem(id);
  }
}
