/*
 This implemenatation of the selection sort algorithm sorts an array's items in
 the ascending order.
 */

void swap(arr, idx_A, idx_B) {
  int temp = arr[idx_A];
  arr[idx_A] = arr[idx_B];
  arr[idx_B] = temp;
}

int find_min_idx(arr, idx) {
  int min = arr[idx];
  int min_idx = idx;

  for (int i = idx; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
      min_idx = i;
    }
  }

  return min_idx;
}

void selection_sort(arr) {
  int idx = 0;
  while (idx < arr.length - 1) {
    int min_idx = find_min_idx(arr, idx);
    swap(arr, idx, min_idx);
    idx++;
  }
  print(arr);
}
