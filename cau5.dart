// dart program to write to existing file
import 'dart:io';

void main() { 
  for(int i = 0; i< 100; i++){
    File file = File('file${i}');
    file.writeAsStringSync('${i}', mode: FileMode.append);
    print('${i}');
  }
}