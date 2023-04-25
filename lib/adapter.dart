class Nutrient {
  final String name;

  Nutrient(this.name);
}



abstract class NutrientAdapter {
  List<Nutrient> getNutrients();
}

class SugarAdapter implements NutrientAdapter {
  @override
  List<Nutrient> getNutrients() {
    return [
      Nutrient('sodium'),
      Nutrient('calories'),
    ];
  }
}

class SaltAdapter implements NutrientAdapter {
  @override
  List<Nutrient> getNutrients() {
    return [
      Nutrient('sodium'),
      Nutrient('potassium'),
    ];
  }
}
