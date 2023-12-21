import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';
import 'package:birthflow/src/presentation/home/bloc/home_list/state/state.dart';
import 'package:bloc/bloc.dart';

class GeneralBloc extends Bloc<GeneralEvent, GeneralState> {
  final GeneralGetUseCase getGeneralUseCase;

  GeneralBloc(this.getGeneralUseCase) : super(const GeneralState.initial()) {
    on<FetchGeneralData>(_onPostFetched);
  }

  Future<void> _onPostFetched(
    GeneralEvent event,
    Emitter<GeneralState> emit,
  ) async {
    emit(const GeneralState.loading());
    try {
      final generalData = await getGeneralUseCase.execute();
      emit(GeneralState.loaded(generalData));
    } catch (e) {
      emit(const GeneralState.error('Error al cargar los datos generales'));
    }
  }
}
