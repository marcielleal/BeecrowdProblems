import 'dart:io';

void main() {
    int x;
    var input;

    for (int i = 0; i < 10; ++i) {
        input = stdin.readLineSync();
        x = int.parse(input);
        stdout.write('X[');
        stdout.write(i);
        stdout.write('] = ');
        print(x > 0 ? x : 1);
    }
}
