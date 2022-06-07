import 'package:flutter/material.dart';

class LearnForm extends StatefulWidget {
  const LearnForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnFormState();
  }
}

class _LearnFormState extends State<LearnForm> {
  final GlobalKey _globalKey = GlobalKey<FormState>();
  final Widget child = Container();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: '用户名',
              hintText: '请输入用户名',
              prefixIcon: Icon(Icons.person),
            ),
            onSaved: (String? value) {
              print('用户名 onSaved: $value');
            },
            validator: (String? value) {
              String? result;
              if (value == null || value.isEmpty) {
                result = '请输入用户名';
              }
              return result;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
              prefixIcon: Icon(Icons.lock),
            ),
            onSaved: (String? value) {
              print('密码 onSaved: $value');
            },
            validator: (String? value) {
              String? result;
              if (value == null || value.isEmpty) {
                result = '请输入密码';
              } else if (value.length < 6) {
                result = '密码不能少于 6 位';
              }
              return result;
            },
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: save,
                  child: const Text('save'),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: reset,
                  child: const Text('reset'),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: validate,
                  child: const Text('validate'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  save() {
    (_globalKey.currentState as FormState).save();
  }

  reset() {
    (_globalKey.currentState as FormState).reset();
  }

  validate() {
    bool result = (_globalKey.currentState as FormState).validate();
    if (result) {
      print('validate 通过');
    } else {
      print('validate 不通过');
    }
  }
}
