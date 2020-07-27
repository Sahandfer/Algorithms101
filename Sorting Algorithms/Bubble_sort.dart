void swap(arr, idx_A, idx_B) {
  int temp = arr[idx_A];
  arr[idx_A] = arr[idx_B];
  arr[idx_B] = temp;
}

void bubble_sort(arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        swap(arr, j, j + 1);
      }
    }
  }
  print(arr);
}
