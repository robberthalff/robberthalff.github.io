import 'package:validations/validations.dart';

part 'car.g.dart';

class Car {
  @NotNull()
  String manufacturer;

  @Size(
    min: 2,
    max: 14,
    message:
        r'The license plate $validatedValue must be between $min and $max characters long',
  )
  @NotNull()
  String licensePlate;

  @Min(
    value: 1,
    message: r'Car must at least have $value seats available',
  )
  @Max(
    value: 2,
    message: r'Car cannot have more than $value seats',
  )
  int seatCount;

  @Max(
    value: 350,
    message: r'The top speed $validatedValue is higher than $value',
  )
  int topSpeed;
}

@GenValidator()
class TestCarValidator extends Validator<Car> with _$TestCarValidator {}
