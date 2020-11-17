import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

class AppStorage {


  static setData(String key, Map<String, String> value) async {
    print(key);
    print(value);
    //FlutterSecureStorage appStorage = new FlutterSecureStorage();
    await FlutterSecureStorage().write(key: key, value: json.encode(value));
  }

  static getData(String key) async {
    print('in Get Data=============');
    //FlutterSecureStorage appStorage = new FlutterSecureStorage();
    final data = await FlutterSecureStorage().read(key: key);
    print(data);
     final decodedData = json.decode(data) ;
    print('userName--> ${decodedData['userName']}');
    print('password--> ${decodedData['password']}');
  }
}
