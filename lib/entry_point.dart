import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdlab3/header.dart';
import 'package:mdlab3/profile_page.dart';
import 'package:mdlab3/settings_page.dart';

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold (
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar:  AppBar(
            leadingWidth: double.maxFinite,
            leading: const Header('Екатерина', 'assets/images/profile_photo.png'),
            shadowColor: Colors.black.withAlpha(80),
            elevation: 10,
            surfaceTintColor: Colors.white,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).primaryColor,
              labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              tabs: const [
                Tab(child: Text('Профиль')),
                Tab(child: Text('Настройки'))
              ],
            ),
          ),
          body: const TabBarView (
            children: [
              ProfilePage(),
              SettingsPage(),
            ],
          )
      ),
    );
  }
}

class DescribedTitle extends StatelessWidget {
  const DescribedTitle(this._title, this._description, {super.key});

  final String _title;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            _title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800)
        ),
        Text(
          _description,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ],
    );
  }
}
