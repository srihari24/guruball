import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

// im from  web
// hello im from vs code
  final VoidCallback selectHandler;

  Answer(this.selectHandler);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1 test'),
        onPressed:selectHandler,
      ),
    );
  }
}
// git branch dev 
// git checkout dev 
