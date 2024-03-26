import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class RegisterResponse {
  String id;
  String name;
  String job;
  String createdAt;

  RegisterResponse(
    {required this.id,
    required this.name,
    required this.job,
    required this.createdAt});

  factory RegisterResponse.createRegisterResponse(Map<String, dynamic> object){
    return RegisterResponse(
      id: object ['id'], 
      name: object ['name'], 
      job: object ['job'], 
      createdAt: object ['createdAt']);
  }

  static Future<RegisterResponse> connectToAPI(String name, String job) async{
    var apiurl = Uri.parse("https://reqres.in/api/users");
    var apiResult = await http.post(apiurl ,body: {"name": name, "job": job});

    var jsonObject = json.decode(apiResult.body);

    return RegisterResponse.createRegisterResponse(jsonObject);
  }

}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>{

  RegisterResponse? registerResponse = null;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController jobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Screen'),
), // AppBar
body: Column(
children: [
Container(
padding: EdgeInsets.only(left: 10, right: 10),
width: double.infinity,
child: Column(
children: [
SizedBox(height: 10),
TextField(
  controller: namecontroller,
decoration: InputDecoration( hintText: 'Enter your name', labelText: 'Name',
border: OutlineInputBorder() 
),// InputDecoration
), // TextField
SizedBox(height: 10),
TextField(
  controller: jobcontroller,
decoration: InputDecoration( hintText: 'Enter your Job', labelText: 'Job',
border: OutlineInputBorder(),
), // InputDecoration
), // TextField
SizedBox(height: 10),
Container(
height: 50,
width: double.infinity,
child: ElevatedButton(
style: ElevatedButton.styleFrom( backgroundColor: Colors.lightBlue,
),
onPressed: () {
  RegisterResponse.connectToAPI(
    namecontroller.text, jobcontroller.text)
    .then((value) {
      registerResponse = value;
      setState(() {});
    });
},
child: Text('Submit')
), // ElevatedButton
), // Container
SizedBox(height: 10),
Text(registerResponse == null
    ? 'NO DATA'
    : registerResponse!.id + 
      '|' +
      registerResponse!.name +
      '|' +
      registerResponse!.job +
      '|' +
      registerResponse!.createdAt)
],
), // Column
), // Container
],
), // Column
); // Scaffold
  }
}

   

 