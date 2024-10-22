import 'package:usrf/api/data_getter.dart';
import 'package:usrf/api/implementation/api.dart';

class DataFactory {
  static DataGetter? _dataGetter;

  static DataGetter getDataGetter() {
    _dataGetter ??= Api() as DataGetter?;

    return _dataGetter!;
  }
}