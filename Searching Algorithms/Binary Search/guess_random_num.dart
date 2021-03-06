import 'dart:math';

/*
  This implementation of the binary search algorithm is used to play a guessing
  game. In this game, a number between a given range is chosen and the algorithm
  tries to guess the chosen number.
 */

int binary_search(min, max, chosen_num) {
  int answer;
  int iterations = 0;
  while (true) {
    int average = ((min + max) / 2).round();
    if (average == chosen_num) {
      answer = average;
      break;
    } else if (average > chosen_num) {
      max = average;
    } else if (average < chosen_num) {
      min = average;
    }
    iterations++;
  }
  print("Finished in ${iterations} iterations!");
  return answer;
}

void main() {
  int min = 0;
  int max = 100;
  int random_number = min + new Random().nextInt(max);
  print("Chosen number: ${random_number}");
  print(binary_search(min, max, random_number));
}
