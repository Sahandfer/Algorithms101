/*
 This implemenatation of the quick sort algorithm sorts an array's items in
 the ascending order.
 */

void swap(arr, idx_A, idx_B) {
  int temp = arr[idx_A];
  arr[idx_A] = arr[idx_B];
  arr[idx_B] = temp;
}

int partition(arr, start, end) {
  int pivot = arr[end];
  int pivot_idx = start;

  for (int i = start; i < end; i++) {
    if (arr[i] <= pivot) {
      swap(arr, pivot_idx, i);
      pivot_idx++;
    }
  }
  swap(arr, pivot_idx, end);
  return pivot_idx;
}

void sort(arr, start, end) {
  if (start < end) {
    int pivot = partition(arr, start, end);
    sort(arr, start, pivot - 1);
    sort(arr, pivot + 1, end);
  }
}

void quick_sort(arr) {
  sort(arr, 0, arr.length - 1);
  print(arr);
}
