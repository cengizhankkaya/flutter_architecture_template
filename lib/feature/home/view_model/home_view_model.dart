import 'package:architecture_template/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template/product/service/interface/authenction_operation.dart';
import 'package:architecture_template/product/state/base/base_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class HomeViewModel extends BaseCubit<HomeState> {
  HomeViewModel({required AuthenctionOperation operationService})
    : _authenctionOperationService = operationService,
      super(HomeState(isLoading: false));

  late final AuthenctionOperation _authenctionOperationService;
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  /// Get users from the service
  Future<void> fetchUsers() async {
    final response = await _authenctionOperationService.users();
    emit(state.copyWith(users: response));
  }
}
