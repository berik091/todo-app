import 'package:flutter/material.dart';
import 'package:todo_app/srceens/home_screen.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel'),
                  color: Colors.red),
              FlatButton(
                  onPressed: () {}, child: Text('Save'), color: Colors.green)
            ],
            title: Text('Categories Form'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Write a category', labelText: 'Category'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Write a description',
                        labelText: 'Description'),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
          child: Icon(Icons.arrow_back, color: Colors.white),
          color: Colors.red,
          elevation: 0.0,
        ),
        title: Text('Categories'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Some text Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
