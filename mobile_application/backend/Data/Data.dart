import 'DataEnum.dart';
import 'DataFormating/HashClient.dart';
import 'Implementation/PrismaDAO.dart';
import 'Interface/ITypeDAO.dart';

class Data {
  static ITypeDAO? _dao;

  static ITypeDAO getDAO() {
    _dao ??= Data.createDAO(DataEnum.PRISMA);
    return _dao!;
  }

  static ITypeDAO? createDAO(DataEnum dataEnum) {
    switch (dataEnum) {
      case DataEnum.PRISMA:
        _dao = PrismaDAO(HashClient());
        return _dao;
      _:
        throw Exception('DAO not found');
    }
  }
}
