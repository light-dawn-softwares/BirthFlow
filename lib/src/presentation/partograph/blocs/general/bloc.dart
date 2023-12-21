import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/usecases/find_by_usecase.dart';
import 'package:birthflow/src/core/general/domain/usecases/update_usecase.dart';
import 'package:birthflow/src/presentation/partograph/blocs/general/state/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralItemBloc extends Bloc<GeneralItemEvent, GeneralItemState> {
  final GeneralFindByUseCase findByUseCase;
  final GeneralUpdateUseCase updateUseCase;

  GeneralItemBloc(this.findByUseCase, this.updateUseCase)
      : super(const GeneralItemState.initial()) {
    on<FetchGeneralData>(_onFetchData);
    on<UpdateGeneralData>(_onUpdateData);
  }

  Future<void> _onFetchData(
    FetchGeneralData event,
    Emitter<GeneralItemState> emit,
  ) async {
    emit(const GeneralItemState.loading());
    try {
      final generalData = await findByUseCase.execute(partographId: event.id);
      emit(GeneralItemState.loaded(generalData!));
    } catch (e) {
      emit(GeneralItemState.error(e.toString()));
    }
  }

  Future<void> _onUpdateData(
    UpdateGeneralData event,
    Emitter<GeneralItemState> emit,
  ) async {
    emit(const GeneralItemState.loading());
    try {
      await updateUseCase.execute(partographId: event.partographId, name: event.name, recordNumber: event.recordNumber, date: event.date);
      emit(GeneralItemState.loaded(General(partographId: event.partographId, name: event.name, recordNumber: event.recordNumber, date: event.date)));
     
    } catch (e) {
      emit(GeneralItemState.error(e.toString()));
    }
  }
}
