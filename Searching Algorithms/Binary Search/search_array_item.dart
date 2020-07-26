import 'dart:math';

/*
  This implementation of the binary search algorithm is used to find a value in 
  a given array.
*/

int binary_search(arr, item) {
  int min = 0;
  int max = arr.length - 1;
  int answer;
  int iterations = 0;

  while (true) {
    int average_idx = ((min + max) / 2).round();
    int average = arr[average_idx];
    if (average == item) {
      answer = average;
      break;
    } else if (average > item) {
      max = average_idx;
    } else if (average < item) {
      min = average_idx;
    }
    iterations++;
  }
  print("Finished in ${iterations} iterations!");
  return answer;
}

void main() {
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int item = 10;
  binary_search(arr, item);
}
