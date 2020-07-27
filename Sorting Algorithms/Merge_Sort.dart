/*
 This implemenatation of the Merge sort algorithm sorts an array's items in
 the ascending order.
 */

void merge(arr, start, mid, end) {
  int left_size = mid - start + 1;
  int right_size = end - mid;

  List left = new List(left_size);
  List right = new List(right_size);

  int i;
  int j;
  int k = start;

  for (i = 0; i < left_size; i++) {
    left[i] = arr[k + i];
  }

  for (j = 0; j < right_size; j++) {
    right[j] = arr[mid + j + 1];
  }

  i = 0;
  j = 0;
  k = start;

  while (i < left_size && j < right_size) {
    if (left[i] <= right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left_size) {
    arr[k] = left[i];
    i++;
    k++;
  }

  while (j < right_size) {
    arr[k] = right[j];
    j++;
    k++;
  }
}

void sort(arr, start, end) {
  if (start < end) {
    int mid = (start + end) ~/ 2;
    sort(arr, start, mid);
    sort(arr, mid + 1, end);
    merge(arr, start, mid, end);
  }
}

void merge_sort(arr) {
  sort(arr, 0, arr.length - 1);
  print(arr);
}
