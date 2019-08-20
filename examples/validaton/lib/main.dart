import './car.dart';

final validator = TestCarValidator();

final car = Car()
  ..licensePlate = 'D'
  ..manufacturer = null
  ..seatCount = 3
  ..topSpeed = 500;

main() {
  final violations = validator.validate(car);

  print('There are ${violations.length} violations.');
  for (var violation in violations) {
    print('${violation.propertyPath}: ${violation.message}');
  }
}
