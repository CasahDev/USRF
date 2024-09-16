import '../Data/Data.dart';
import 'Implemantation/TypeService.dart';
import 'Interface/ITypeService.dart';
import 'ServiceEnum.dart';

class Service {
  static ITypeService? _service;

  static ITypeService getService() {
    _service ??= TypeService(Data.getDAO());
    return _service!;
  }

  static ITypeService createService(ServiceEnum serviceEnum, Data dao) {
    switch (serviceEnum) {
      case ServiceEnum.TYPESERVICE:
        _service = TypeService(Data.getDAO());
        return _service!;
      _:
        throw Exception('Service not found');
    }
  }
}