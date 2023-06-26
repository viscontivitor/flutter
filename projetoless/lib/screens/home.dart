import 'package:flutter/material.dart';
import 'package:projetoless/screens/components/sections/account_actions.dart';
import 'package:projetoless/screens/components/sections/account_points.dart';
import 'package:projetoless/screens/components/sections/header.dart';
import 'package:projetoless/screens/components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
          AccountPoints2(),
        ],
      ),
    );
  }
}
