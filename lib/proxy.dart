abstract class NetworkNode {
  void method();
}

class RealPerson implements NetworkNode {
  String name;

  RealPerson(this.name);

  @override
  void method() {
    print('class RealPerson called');
  }
}

class Proxy implements NetworkNode {
  final String _name;
  final RealPerson _sub;

  Proxy(this._name, this._sub);

  @override
  void method() {
    print('class Proxy called');
    _subject().method();
  }

  NetworkNode _subject() {
    return _sub;
  }
}