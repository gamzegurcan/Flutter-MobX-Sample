import 'package:flutter/material.dart';
import 'package:mvvm_mobx/features/post/view/post-view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PostView(),
    );
  }
}