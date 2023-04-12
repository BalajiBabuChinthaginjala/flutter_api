import 'package:api_test/api_services.dart';
import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(const Post());
}
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final TextEditingController _idController=TextEditingController();
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _userNameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();

  late List<UserModel>? _userModel = [];

void _postData() async{
 _userModel=(await ApiService().putuser());
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Post"),
        ),
        body:Column(
          children: <Widget>[
            TextField(controller: _idController,decoration:  const InputDecoration(hintText: 'Enter Id'),),
            TextField(controller: _nameController,decoration:  const InputDecoration(hintText: 'Enter Name'),),
            TextField(controller: _userNameController,decoration:  const InputDecoration(hintText: 'Enter UserName'),),
            TextField(controller: _emailController,decoration:  const InputDecoration(hintText: 'Enter Email'),),
          ],
        ),
      ),
    );
  }
}
