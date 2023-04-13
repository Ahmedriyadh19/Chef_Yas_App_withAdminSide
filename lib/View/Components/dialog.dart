// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chef_yas/View/Components/text_field.dart';
import 'package:chef_yas/View/Pages/Admin/navigator_admin.dart';
import 'package:flutter/material.dart';

class MyDialog {
  final BuildContext context;
  final TextEditingController _admin = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? _errors;
  bool _hasError = false;
  List<Widget> _listInput = [];

  MyDialog({
    required this.context,
  }) {
    _init();
    _showMyDialog();
  }

  _init() {
    _listInput = [
      MyTextField(isPassword: false, name: 'User name', myController: _admin),
      MyTextField(isPassword: true, name: 'Password', myController: _password)
    ];
  }

  void _checker({required Function setState}) {
    setState(
      () {
        if (_admin.text.isNotEmpty) {
          if (_admin.text.trim().isNotEmpty) {
            if (_password.text.isNotEmpty) {
              if (_password.text.trim().isNotEmpty) {
                if (_admin.text.toLowerCase() == 'admin' && _password.text.toLowerCase() == 'admin') {
                  _errors = null;
                  _hasError = false;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const MyNavigatorAdmin(),
                  ));
                }
              }
            }
          }
        } else {
          _errors = 'Invalid Data';
          _hasError = true;
        }
      },
    );
  }

  dialog({required Function setState}) {
    return AlertDialog(
      title: Center(child: Text('Admin Gate'.toUpperCase())),
      content: SingleChildScrollView(
        child: ListBody(children: [
          _listInput[0],
          _listInput[1],
          if (_hasError && _errors != null)
            Center(
                child: Text(
              _errors!,
              style: const TextStyle(color: Colors.red),
            ))
        ]),
      ),
      actions: [
        _btn(
            l: 'Cancel',
            f: () {
              Navigator.of(context).pop();
            }),
        _btn(
            l: 'Approve',
            f: () {
              // _checker(setState: setState);

              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const MyNavigatorAdmin(),
              ));
            }),
      ],
    );
  }

  TextButton _btn({required String l, required Function f}) {
    return TextButton(
      child: Text(l),
      onPressed: () {
        f();
      },
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return dialog(setState: setState);
          },
        );
      },
    );
  }
}
