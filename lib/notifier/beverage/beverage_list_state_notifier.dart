import 'package:cubere/data/repository/beverage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'beverage_list_state.dart';

final beverageListStateProvider = StateNotifierProvider.autoDispose<
    BeverageListStateNotifier, BeverageListState>(
  (ref) => BeverageListStateNotifier(ref),
);

class BeverageListStateNotifier extends StateNotifier<BeverageListState> {
  final BeverageRepository _beverageRepository;

  BeverageListStateNotifier(ProviderRefBase ref)
      : _beverageRepository = ref.read(beverageRepositoryProvider),
        super(const BeverageListState.initial());

  void getBeverageList() async {
    state = const BeverageListState.loading();
    final leftOrRight = await _beverageRepository.fetchBeverageList();
    state = leftOrRight.fold(
      (l) => BeverageListState.error(
        l.when(
          invalidRequest: () => '잘못된 요청입니다.',
          serverError: () => '서버 오류입니다.',
        ),
      ),
      (r) => BeverageListState.loaded(r),
    );
  }
}
