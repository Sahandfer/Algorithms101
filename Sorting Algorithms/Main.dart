import 'Insertion_Sort.dart';
import 'Selection_Sort.dart';
import 'Merge_Sort.dart';
import 'Quick_Sort.dart';

void main(List<String> args) {
  var arr = [3, 6, 4, 5, 2, 1, 7, 0, 9, 8];
  String sort_type = args[0];

  switch (sort_type) {
    case 'Insertion':
      insertion_sort(arr);
      break;

    case 'Selection':
      selection_sort(arr);
      break;

    case 'Merge':
      merge_sort(arr);
      break;

    case 'Quick':
      break;
    default:
  }
}
