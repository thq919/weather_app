import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/api/urls/const_urls.dart';

const _envApiKey = "API_KEY";
const _envBaseUrl = "BASE_URL";
const _envMockKey = "MOCK";


String get configBaseUrl {
  final getKey = dotenv.maybeGet(_envBaseUrl) ?? "";
  final link = getKey.toLowerCase();

  return link.contains("http") ? link : ConstUrl.baseUrls.first;
}

String get configApiKey {
  final getKey = dotenv.maybeGet(_envApiKey) ?? "";
  final link = getKey.toLowerCase();

  return link;
}

String get mockMode {
  return dotenv.maybeGet(_envMockKey)?.toLowerCase() ?? "";
}




const testMock = Environment('test');
const prodMock = Environment('prod');
const emptyMock = Environment('');
