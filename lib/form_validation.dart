import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      home: Scaffold(
        body: MyFormCustom(),
        appBar: new AppBar(
          title: Text('Form validation sample'),
        ),
      ),
    );
  }
}

class MyFormCustom extends StatefulWidget {
  @override
  State createState() => MyFormCustomState();
}

class MyFormCustomState extends State<StatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  String _userName, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextFormField(
              decoration: new InputDecoration(hintText: 'Username'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Username tidak boleh kosong';
                }
              },
              onSaved: (value) {
                _userName = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextFormField(
              decoration: new InputDecoration(hintText: 'Password'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password tidak boleh kosong';
                }
              },
              onSaved: (value) {
                _password = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            'Username : $_userName\n password: $_password')));
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


