abstract class Clothing {
  String describe();
}

class Shirt implements Clothing {
  @override
  String describe() {
    return 'shirt';
  }
}

class Pullover implements Clothing {
  @override
  String describe() {
    return 'pullover';
  }
}

abstract class ClothingDecorator implements Clothing {
  final Clothing clothing;

  ClothingDecorator(this.clothing);

  @override
  String describe() {
    return describe();
  }
}

class RedClothingDecorator extends ClothingDecorator {
  RedClothingDecorator(Clothing clothing) : super(clothing);

  @override
  String describe() {
    return 'Red ${clothing.describe()}';
  }
}

class BlueClothingDecorator extends ClothingDecorator {
  BlueClothingDecorator(Clothing clothing) : super(clothing);

  @override
  String describe() {
    return 'Blue ${clothing.describe()}';
  }
}

