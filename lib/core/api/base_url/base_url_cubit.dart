
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/api/urls/const_urls.dart';

import 'base_url_state.dart';

@singleton
class BaseUrlCubit extends HydratedCubit<BaseUrlState> {
  BaseUrlCubit() : super(BaseUrlState(url: ConstUrl.baseUrls.first));

  String get url => state.url;

  void setNewUrl(String url) {
    if (ConstUrl.baseUrls.contains(url)) {
      emit(state.copyWith(url: url));
    }
  }

  void resetIfNotExistsd() {
    if (!ConstUrl.baseUrls.contains(url)) {
      setNewUrl(ConstUrl.baseUrls.first);
    }
  }

  @override
  BaseUrlState? fromJson(Map<String, dynamic> json) =>
      BaseUrlState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(BaseUrlState state) => state.toMap();
}
