import 'package:flutter/material.dart';
import 'package:news_git_hub/core/app_color.dart';
import 'package:news_git_hub/home/category_details/category_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: Theme.of(context).textTheme.labelLarge,),
        centerTitle: true,
      ),
      body: CategoryDetails(),
    );
  }
}
