import 'package:untitled2/adapter.dart';
import 'package:untitled2/composite.dart';
import 'package:untitled2/decorator.dart';
import 'package:untitled2/facade.dart';
import 'package:untitled2/proxy.dart';

void main() {
  print('============ Composite ============');
  composite();
  print('============ Composite ============\n\n');
  print('============ Proxy ============');
  proxy();
  print('============ Proxy ============\n\n');
  print('============ Adapter ============');
  adapter();
  print('============ Adapter ============\n\n');
  print('============ Decorator ============');
  decorator();
  print('============ Decorator ============\n\n');
  print('============ Facade ============');
  facade();
  print('============ Facade ============\n\n');
}

void composite() {
  var myFolder = Folder('my_folder');
  for (int i = 0; i < 10; i++) {
    myFolder.addFile(File('untitled$i'));
  }
  var myOtherFolder = Folder('my_other_folder');
  myOtherFolder.addFile(myFolder);
  print(myOtherFolder);
}

void proxy() {
  var proxy = Proxy('154.93.251.29', RealPerson('andrei'));
  proxy.method();
}

void adapter() {
  NutrientAdapter sugarAdapter = SugarAdapter();
  NutrientAdapter saltAdapter = SaltAdapter();

  List<Nutrient> nutrients = sugarAdapter.getNutrients() + saltAdapter.getNutrients();

  print('Sugar has ${sugarAdapter.getNutrients().length}');
  print('Salt has ${saltAdapter.getNutrients().length}');
  print('Together they have ${nutrients.length}');
}

void decorator() {
  var shirt = Shirt();
  var redShirt = RedClothingDecorator(shirt);
  var blueShirt = BlueClothingDecorator(shirt);

  print(redShirt.describe());
  print(blueShirt.describe());
}

void facade() {
  var car = Car();
  car.start();
}
