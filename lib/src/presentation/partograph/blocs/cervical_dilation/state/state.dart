import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CervicalListEvent with _$CervicalListEvent {
  const factory CervicalListEvent.fetchGeneralData(int partographId) =
      FetchData;
  const factory CervicalListEvent.insertData(
    int partographId,
    double cervicalDilation,
    DateTime time,
    bool ramOrRem,
  ) = InsertData;
}

@freezed
class CervicalListState with _$CervicalListState {
  const factory CervicalListState.initial() = CervicalListInitial;
  const factory CervicalListState.loading() = CervicalListLoading;
  const factory CervicalListState.empty() = CervicalListEmpty;
  const factory CervicalListState.loaded(List<CervicalDilation> data) =
      CervicalListLoaded;
  const factory CervicalListState.error(String errorMessage) =
      CervicalListError;
}
