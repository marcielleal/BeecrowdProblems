import 'dart:io';

void main() {
    double grade, acc = 0;

    while (true) {
        var input = stdin.readLineSync();
        if (input != null) {
            grade = double.parse(input);
            if (grade >= 0 && grade <= 10) {
                if (acc != 0) {
                    acc += grade;
                    print ('media = ${(acc/2).toStringAsFixed(2)}');
                    acc = 0;
                    
                    while (input != null) {
                        print ('novo calculo (1-sim 2-nao)');
                        input = stdin.readLineSync();
                        if (input == '1') {
                            break;
                        } else if (input == '2') {
                            exit(0);
                        }
                        input = '0';    // make sure that null isn't red
                    }
                } else {
                    acc += grade;
                }
            } else {
                print ('nota invalida');
                continue;
            }
        }
    }
}
