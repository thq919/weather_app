import 'package:flutter_bloc/flutter_bloc.dart';

class StrCubit extends Cubit<String> {
  StrCubit() : super("");

  set setText(String str) => emit(str);
  String get text => state.trim();
}
