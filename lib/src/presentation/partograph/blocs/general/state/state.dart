import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class GeneralItemEvent with _$GeneralItemEvent {
  const factory GeneralItemEvent.fetchGeneralData(int id) = FetchGeneralData;
  const factory GeneralItemEvent.updateGeneralData(
    int partographId,
    String name,
    String recordNumber,
    DateTime date,
  ) = UpdateGeneralData;
}

@freezed
class GeneralItemState with _$GeneralItemState {
  const factory GeneralItemState.initial() = GeneralItemInitial;
  const factory GeneralItemState.loading() = GeneralItemLoading;
  const factory GeneralItemState.empty() = GeneralItemEmpty;
  const factory GeneralItemState.loaded(General generalData) =
      GeneralItemLoaded;
  const factory GeneralItemState.error(String errorMessage) = GeneralItemError;
}
