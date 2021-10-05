import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}
void main() {
  while (true) {
    final rng = Random();
    stdout.write('Rock, Paper or Scissors (r/p/s) ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.rock;
      } else if (userInput == 'p') {
        playerMove == Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      print('You played: $playerMove');
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('AI selection: $aiMove');
      if (aiMove == playerMove) {
        print('It\'s a draw');
      } else if (playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper ||
          playerMove == Move.rock && aiMove == Move.scissors) {
        print('You win!');
      } else {
        print('You lose!');
      }
    } else if (userInput == 'q') {
      break;
    } else {
      print('invalid input');
    }
  }
}
