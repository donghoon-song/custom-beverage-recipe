import 'package:cubere/data/dto/beverage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeverageList extends StatelessWidget {
  final List<Beverage> list;

  const BeverageList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Beverage item in list)
          Card(
            child: ListTile(
              leading: const Icon(Icons.circle),
              title: Text(item.name),
              subtitle: Text(item.createdAt.toString()),
            ),
          ),
      ],
    );
  }
}
