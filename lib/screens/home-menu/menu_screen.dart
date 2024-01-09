// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen ({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter TabBar Example - Customized "),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child:  TabBar(
                  indicator: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const  [
                    Tab(text: 'Chats',),
                    Tab(text: 'Status',),
                    Tab(text: 'Calls',),
                    Tab(text: 'Settings',)
                  ],
                ),
              ),
              const Expanded(
                  child: TabBarView(
                    children:  [
                      Center(child: Text("Chats Pages"),),
                      Center(child: Text("Status Pages"),),
                      Center(child: Text('Calls Page'),),
                      Center(child: Text('Settings Page'),)
                    ],
                  )
              )
            ],
          ),
        )
      ),
    );
  }
}