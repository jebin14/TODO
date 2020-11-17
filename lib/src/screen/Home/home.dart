import 'package:FIRST_APP/src/screen/Home/home_page_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Tasks'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.view_module), onPressed: () {}),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: ListView.builder(
        itemBuilder: (ctx, index) => HomePageCard(),
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
