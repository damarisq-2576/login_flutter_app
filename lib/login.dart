import 'package:flutter/material.dart';

void main() => runApp(SignIn());

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    final appTitle = "Welcome Daarling!";

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
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
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    
                  }
                },
            child: Text('Login')),
          )
        ],
      ),
    );
  }

}


// import 'package:flutter/material.dart';
// import 'package:damaris_app/login.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }

// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyCustomFormState();
//   }
// }

// Class data related to the form
// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//             decoration: InputDecoration(labelText: 'Enter your email'),
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please don\'t live it in blank';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: InputDecoration(labelText: 'Enter your password'),
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please don\'t live it in blank';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: RaisedButton(
//                 onPressed: () {
//                   if (_formKey.currentState.validate()) {}
//                 },
//                 child: Text('Login')),
//           )
//         ],
//       ),
//     );
//   }
// }
