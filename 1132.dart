import 'dart:io';
import 'dart:math';

void main() {
    int a = 0, b = 0, tmp = 0, acc = 0;
    var results = [0, 0, 0], input;

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

    for (int i = a; i <= b; i++) {
        acc += ((i % 13 != 0) ? i : 0);
    }

    print (acc);
}
