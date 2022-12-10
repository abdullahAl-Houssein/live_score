import 'dart:convert';

import 'package:flutter/material.dart';

import 'TimeClass.dart';
import 'package:http/http.dart' as http;
class SMProvider extends ChangeNotifier{
  List<timeClass> lst=[];
  void getTime() async {
    var requset=await http.get(Uri.http("127.0.0.1:8000", "/time"));
    print(requset.body.toString());
    List<dynamic> lstd=jsonDecode(requset.body.toString());
    lst=lstd.map((s) => timeClass.fromJson(s)).toList();
    notifyListeners();
  }
}