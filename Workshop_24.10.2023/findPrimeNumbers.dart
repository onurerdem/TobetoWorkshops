bool isPrime(int n) {
  if (n <= 1) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  for (int i = 3; i <= (n / 2).floor(); i += 2) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

List<int> findPrimes(int n) {
  List<int> primes = [];

  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  return primes;
}

void main() {
  int n = 100;
  List<int> primeNumbers = findPrimes(n);

  print('1\'den $n\'e kadar olan asal sayılar: $primeNumbers');
}