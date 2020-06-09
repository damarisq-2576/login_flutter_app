import 'package:flutter/material.dart';
import 'package:damaris_app/signin.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainRoute(),
  ));
}

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Hello Daaaarling',
        theme: new ThemeData(
            primarySwatch: Colors.amber
        ),
        home: SignInPage()
      );
      
    }
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('First Route'),
  //     ),
  //     body: Center(
  //       child: MyCustomForm(),
  //     ),
  //   );
  // }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

// Class data related to the form
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your email'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please don\'t live it in blank';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your password'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please don\'t live it in blank';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {}
                },
                child: Text('Login')),
          )
        ],
      ),
    );
  }
}
