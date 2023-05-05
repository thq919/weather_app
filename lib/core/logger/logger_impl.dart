import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/logger/logger.dart';


@Singleton(as: LoggerProvider)
class MyLogger implements LoggerProvider {
 
  MyLogger();

  final logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  @override
  void e(String msg, {StackTrace? stackTrace, Exception? exception}) {
    logger.e(msg, exception, stackTrace);
  }

  @override
  void i(String msg, {StackTrace? stackTrace, Exception? exception}) {
    logger.i(msg, exception, stackTrace);
  }
}
