/*
 This implemenatation of the insertion sort algorithm sorts an array's items in
 the ascending order.
 */

void insert(arr, idx, val) {
  int i;
  for (i = idx; i >= 0 && arr[i] > val; i--) {
    arr[i + 1] = arr[i];
  }
  arr[i + 1] = val;
}

void insertion_sort(arr) {
  int idx = 0;
  for (int i = 1; i < arr.length; i++) {
    int val = arr[i];
    insert(arr, idx, val);
    idx++;
  }
  print(arr);
}
