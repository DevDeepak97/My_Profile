import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String text;
  final IconData icon;
  
  Info({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
     var snackbar=SnackBar(content:Text(text));
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}