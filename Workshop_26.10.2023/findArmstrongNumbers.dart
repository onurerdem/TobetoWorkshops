import 'dart:math';

bool isArmstrong(int number) {
  int originalNumber = number;
  int numberOfDigits = number.toString().length;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numberOfDigits).toInt();
    number = number ~/ 10;
  }

  return sum == originalNumber;
}

void main() {
  int num = 407; // Armstrong sayı örneği
  bool result = isArmstrong(num);

  if (result) {
    print('$num bir Armstrong sayısıdır.');
  } else {
    print('$num bir Armstrong sayısı değildir.');
  }
}
