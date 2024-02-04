// In this functional positional is important
int addPositionalArguments(num1, num2) {
  return num1 + num2;
}

// In the named arguments function, during execution order is not important
int addNamedArguments({num1, num2}) {
  return num1 + num2;
}

void main() {
  // print(addPositionalArguments(5, 5));
  // The order is not important during pass value, in named parameter function
  // print(addNamedArguments(num2: 6, num1: 7));
}
