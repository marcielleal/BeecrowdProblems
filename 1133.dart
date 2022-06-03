import 'dart:io';

void main() {
    int a = 0, b = 0, tmp = 0;
    var input;

    input = stdin.readLineSync();
    if (input != null) {
        a = int.parse(input);
    }

    input = stdin.readLineSync();
    if (input != null) {
        b = int.parse(input);
        if (b < a) {
            tmp = b;
            b = a;
            a = tmp;
        }
    }

    for (int i = a + 1; i < b; i++) {
        if (i % 5 == 2 || i % 5 == 3) {
            print(i);
        }
    }
}
