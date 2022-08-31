import 'dart:io';


int readInt(String msg){
    print(msg);
    return int.parse(stdin.readLineSync()!);
}

String readStrng(String msg){
    print(msg);
    return stdin.readLineSync()!;
}

double readDouble(String msg){
    print(msg);
    return double.parse(stdin.readLineSync()!);
}