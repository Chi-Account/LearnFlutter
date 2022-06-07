import 'package:flutter/material.dart';

class LearnTextField extends StatefulWidget {
  const LearnTextField({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnTextFieldState();
  }
}

class _LearnTextFieldState extends State<LearnTextField> {
  final TextEditingController _usernameController = TextEditingController();
  final FocusNode _usernameFocusNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  login() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    print('登录');
    print('username: $username');
    print('password: $password');
  }

  onPasswordChange(String value) {
    print('onPasswordChange: $value');
  }

  @override
  void initState() {
    super.initState();
    _usernameController.text = 'Default User';
    _usernameController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: _usernameController.text.length,
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _usernameController,
          focusNode: _usernameFocusNode,
          decoration: const InputDecoration(
            labelText: '用户名',
            hintText: '请输入用户名',
            prefixIcon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          textInputAction: TextInputAction.next,
          autofocus: true,
          onEditingComplete: () {
            _passwordFocusNode.requestFocus(null);
          },
        ),
        TextField(
          controller: _passwordController,
          focusNode: _passwordFocusNode,
          decoration: const InputDecoration(
            labelText: '密码',
            hintText: '请输入密码',
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.blue,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          textInputAction: TextInputAction.done,
          obscureText: true,
          onChanged: onPasswordChange,
          onEditingComplete: () {
            _passwordFocusNode.unfocus();
          },
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: login, child: const Text('登录')),
            ),
          ],
        ),
      ],
    );
  }

  Widget theme() {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.black),
          floatingLabelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '请输入用户名',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
            ),
          ),
        ],
      ),
    );
  }
}
