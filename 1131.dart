import 'dart:io';

void main() {
    double score, acc = 0;
    var results = [0, 0, 0], input;

    while (input != '2') {
        input = stdin.readLineSync();
        if (input != null) {
            var scores = input.split(' ').map((s) => int.parse(s)).toList();
            if (scores[0] > scores[1]) {
              results[0]++;
            } else if (scores[0] < scores[1]) {
              results[1]++;
            } else {
              results[2]++;
            }
        }
        print ('Novo grenal (1-sim 2-nao)');
        input = stdin.readLineSync();
    }
    print('${results.reduce((acc, curr) => curr + acc)} grenais');
    print('Inter:${results[0]}');
    print('Gremio:${results[1]}');
    print('Empates:${results[2]}');

    var message = '';
    if (results[0] == results[1]) {
      message = 'Nao houve vencedor';
    } else {
      message = "${(results[0] > results[1]) ? 'Inter' : 'Gremio'} venceu mais";
    }

    print (message);
}
