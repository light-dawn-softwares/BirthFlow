import 'package:birthflow/src/core/cervical_dilation/domain/usecases/create_usecase.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/usecases/get_usecase.dart';
import 'package:birthflow/src/presentation/partograph/blocs/cervical_dilation/state/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CervicaListBloc extends Bloc<CervicalListEvent, CervicalListState> {
  final CervicalDilationGetUseCase findByUseCase;
  final CervicalDilationCreateUseCase updateUseCase;

  CervicaListBloc(this.findByUseCase, this.updateUseCase)
      : super(const CervicalListState.initial()) {
    on<FetchData>(_onFetchData);
    on<InsertData>(_onInsertData);
  }

  Future<void> _onFetchData(
    FetchData event,
    Emitter<CervicalListState> emit,
  ) async {
    emit(const CervicalListState.loading());
    try {
      final data =
          await findByUseCase.execute(partographId: event.partographId);
      emit(CervicalListState.loaded(data!));
    } catch (e) {
      emit(CervicalListState.error(e.toString()));
    }
  }

  Future<void> _onInsertData(
    InsertData event,
    Emitter<CervicalListState> emit,
  ) async {
    emit(const CervicalListState.loading());
    try {
      await updateUseCase.execute(
        partographId: event.partographId,
        cervicalDilation: event.cervicalDilation,
        time: event.time,
        ramOrRem: event.ramOrRem,
      );
      final data =
          await findByUseCase.execute(partographId: event.partographId);
      emit(
        CervicalListState.loaded(data!),
      );
    } catch (e) {
      emit(CervicalListState.error(e.toString()));
    }
  }
}
