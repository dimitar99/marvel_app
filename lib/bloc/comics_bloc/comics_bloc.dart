
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'comics_event.dart';
part 'comics_state.dart';

class ComicsBloc extends Bloc<ComicsEvent, ComicsState> {
  ComicsBloc(): super(ComicsState());
}