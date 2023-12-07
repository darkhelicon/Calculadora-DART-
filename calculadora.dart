import 'dart:io';

void main() {
  while (true) {
    stdout.write("Digite o primeiro número: ");
    String? input1 = stdin.readLineSync();
    if (input1 == null || input1.toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Digite o operador (+, -, *, /): ");
    String? operator = stdin.readLineSync();
    if (operator == null || operator.toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Digite o segundo número: ");
    String? input2 = stdin.readLineSync();
    if (input2 == null || input2.toLowerCase() == 'exit') {
      break;
    }

    try {
      double num1 = double.parse(input1);
      double num2 = double.parse(input2);

      double result = 0;

      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            print("Erro: Não é possível dividir por zero.");
            continue;
          }
          break;
        default:
          print("Operador inválido.");
          continue;
      }

      print("Resultado: $result");
    } catch (e) {
      print(
          "Erro: Entrada inválida. Certifique-se de inserir números válidos.");
    }
  }
}
