import 'dart:mirrors';

class Reposity {
  final String _name;

  Reposity(this._name);

  @override
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value' ";

  }
  }
