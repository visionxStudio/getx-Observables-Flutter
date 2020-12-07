import './screens/add_followers.dart';
import './screens/add_reviews.dart';
import './screens/edit_follower_count.dart';
import './screens/edit_name.dart';
import './screens/home.dart';
import './screens/toggle_status.dart';
import './screens/update_menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
      routes: {
        'home': (context) => Home(),
        'edit_name': (context) => EditName(),
        'add_followers': (context) => AddFollowers(),
        'toggle_status': (context) => ToggleStatus(),
        'edit_follower_count': (context) => EditFollowerCount(),
        'add_reviews': (context) => AddReviews(),
        'update_menu': (context) => UpdateMenu(),
      },
    );
  }
}
