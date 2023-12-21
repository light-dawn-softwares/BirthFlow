import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class GeneralEvent with _$GeneralEvent {
  const factory GeneralEvent.fetchGeneralData() = FetchGeneralData;
}

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState.initial() = GeneralInitial;
  const factory GeneralState.loading() = GeneralLoading;
  const factory GeneralState.empty() = GeneralEmpty;
  const factory GeneralState.loaded(List<General> generalData) = GeneralLoaded;
  const factory GeneralState.error(String errorMessage) = GeneralError;
}
