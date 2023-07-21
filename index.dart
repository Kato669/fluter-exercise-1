
import 'dart:io';
void main() {
  // number 1
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int num in a) {
    if (num < 5) {
      print(num);
    }
  }

  // number 2
  List<int> b = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> c = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> commonElements = findCommonElements(b, c);
  print(commonElements);

  //number 3
  // Write a program to check if a string is a palindrome or not.
  String input = "mum"; // Change this string to test different inputs
  if (isPalindrome(input)) {
    print('$input is a palindrome.');
  } else {
    print('$input is not a palindrome.');
  }

  //number 4
  // Write a program that takes a list of numbers for example a = [5, 10, 15, 20, 25] and makes a new list of only the first and last elements of the given list. For practice, write this code inside a
  // function.
  List<int> lists = [5, 10, 15, 20, 25];
  List<int> answered = getFristAndLastNum(lists);
  print(answered);


  //number 5
  print("Please enter a long string containing multiple words:");
  String? input1 = stdin.readLineSync();

  String reversedString = reverseWordsOrder(input1 ?? '');
  print("Reversed string: $reversedString");

  //number 6
  List<int> originalList = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9];
  List<int> newList = removeDuplicates(originalList);
  print(newList);
}

bool isPalindrome(String str) {
  int start = 0;
  int end = str.length - 1;

  while (start < end) {
    if (str[start] != str[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}

//still number 2
List<int> findCommonElements(List<int> list1, List<int> list2) {
  Set<int> set1 = list1.toSet();
  Set<int> set2 = list2.toSet();
  Set<int> inter = set1.intersection(set2);
  List<int> ans = inter.toList();
  return ans;
}

//function for number 4
List<int> getFristAndLastNum(List<int> inputs) {
  if (inputs.isEmpty) {
    throw ArgumentError("input can not be empt");
  }

  List<int> results = [inputs.first, inputs.last];
  return results;
}

//function 5
String reverseWordsOrder(String input) {
  List<String> words = input.split(' ');
  words = words.reversed.toList();
  return words.join(' ');
}

//function for number 6
List<int> removeDuplicates(List<int> inputList) {
  List<int> result = [];
  for (int number in inputList) {
    if (!result.contains(number)) {
      result.add(number);
    }
  }
  return result;
}
