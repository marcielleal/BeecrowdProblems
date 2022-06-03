import 'dart:io';

void main() {
    int counter = 0, x, y;
    var input;

    input = stdin.readLineSync();
    if (input != null) {
        var inputs = input.split(' ');
        x = int.parse(inputs[0]);
        y = int.parse(inputs[1]);

        for (int i = 1; i < y; i++) {
            counter++;
            stdout.write(i);
            if (counter != x) {
                stdout.write(' ');
            } else {
                stdout.write('\n');
                counter = 0;
            }
        }
        stdout.write(y);
    }
}
