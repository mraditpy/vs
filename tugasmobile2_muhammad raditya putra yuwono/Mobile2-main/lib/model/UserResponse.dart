import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class UserResponse {
  String id;
  String email;
  String name;
  String avatar;

  UserResponse(
    {required this.id,
    required this.email,
    required this.name,
    required this.avatar});

  factory UserResponse.createUserResponse(Map<String, dynamic>object) {
    return UserResponse(
      id: object['id'].toString(), 
      email: object ['email'], 
      name: object['first_name'] + " " + object['last_name'], 
      avatar: object['avatar']);
  }

  static Future<List<UserResponse>> getUserList(String page) async {
    var apiurl = Uri.parse("https://reqres.in/api/users?page=" + page);
    var apiResult = await http.get(apiurl);

    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<UserResponse> users =  [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(UserResponse.createUserResponse(listUser[i]));
    }
    return users;
  }

}

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>{
  UserResponse? userResponse = null;
  List<UserResponse> userList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar User'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              child: Row(children: [
                Image(
                  width: 100,
                  height: 100,
                  image: NetworkImage(userList[index].avatar)),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userList[index].name),
                      Text(userList[index].email),
                    ],
                  ),
                ),
              ],)
            ),
          );
        }),
    );
  }
}