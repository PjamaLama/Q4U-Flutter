import 'package:compound/ui/shared/ui_helpers.dart';
import 'package:compound/ui/widgets/busy_button.dart';
import 'package:compound/ui/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:compound/viewmodels/signup_view_model.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => new _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  List<Step> steps = [
    Step(
      title: const Text('New Account'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Address'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Create an account'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
            ),
          ),
        ]));
  }
}
