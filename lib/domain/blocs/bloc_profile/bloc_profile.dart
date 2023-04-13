// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_profile/repository_profile.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile_event.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile_state.dart';

class BlocProfile extends Bloc<BlocProfileEvent, BlocProfileState> {
  final RepositoryProfile repo;

  BlocProfile({required this.repo}) : super(const BlocProfileState.loading()) {
    on<BlocProfileEventInit>(_init);
  }

  Future<void> _init(
    BlocProfileEventInit event,
    Emitter<BlocProfileState> emit,
  ) async {
    try {
      final profile = await repo.getData();

      emit(BlocProfileState.loaded(profile));
    } catch (e) {
      emit(BlocProfileState.error(e.toString()));
    }
  }
}
