// dart program to write to existing file
import 'dart:io';

void main() {
  //List of name
   List<String> friendNames = ["An", "Liêm", "Văn", "Tuấn", "Minh", "Long", "Anh"];
  // open file
  File file =  File('hello.txt');
  // write to file
   for(int i = 0; i<friendNames.length; i++){
    file.writeAsStringSync(friendNames[i] + " ", mode: FileMode.append);
  }
}