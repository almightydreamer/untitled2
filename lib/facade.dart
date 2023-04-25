class Car {
  Car();

  void start() {
    var oilPump = OilPump();
    var fuse = Fuse();
    var fuelPump = FuelPump();
    var steeringPump = SteeringPump();

    oilPump.start();
    fuse.start();
    fuelPump.start();
    steeringPump.start();

    print('all car systems started');
  }
}

class OilPump {
  void start() {
    print('oil pump started');
  }
}

class Fuse {
  void start() {
    print('fuse started');
  }
}

class FuelPump {
  void start() {
    print('fuel pump started');
  }
}

class SteeringPump {
  void start() {
    print('steering pump started');
  }
}
