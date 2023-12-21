import 'package:flutter/material.dart';
import 'package:orm_flutter_beginner/00_repository/star_repository.dart';

import '../00_model/star.dart';

class CheckBoxListScreen extends StatefulWidget {
  const CheckBoxListScreen({super.key});

  @override
  State<CheckBoxListScreen> createState() => _CheckBoxListScreenState();
}

class _CheckBoxListScreenState extends State<CheckBoxListScreen> {
  final repository = StarRepository();
  final favorites = <Star>{};
  @override
  Widget build(BuildContext context) {
    final stars = repository.getStars();

    return Scaffold(
      body: ListView(
        children: stars.map((star) {
          return CheckboxListTile(
            title: Text(star.title),
            value: favorites.contains(star),
            onChanged: (bool? value) {
              setState(() {
                if (value! == true) {
                  favorites.add(star);
                } else {
                  favorites.remove(star);
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
