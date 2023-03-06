//Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
import 'dart:io';

void main() {
  // open file
  File file = File('hello.txt');
  //get file contents
  String contents = file.readAsStringSync();

  //get file_copy contents
  String copy_contents = contents;
  File file_copy = File('hello_copy.txt');

  //write in file_copy
  file_copy.writeAsStringSync('${copy_contents}', mode: FileMode.append);
  copy_contents = file_copy.readAsStringSync();
  print(copy_contents);

}