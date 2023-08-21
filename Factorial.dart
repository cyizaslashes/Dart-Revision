int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int number = 5; // Replace with the desired number
  int result = factorial(number);
  print("Factorial of $number is $result");
}
