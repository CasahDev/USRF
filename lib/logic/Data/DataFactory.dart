import 'package:usrf/logic/Data/DataGetter.dart';
import 'package:usrf/logic/Data/implementation/api.dart';

class DataFactory {
  static DataGetter? _dataGetter;

  static DataGetter getDataGetter() {
    _dataGetter ??= Api();

    return _dataGetter!;
  }
}