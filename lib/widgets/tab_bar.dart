import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<Widget> tabs;

  const CustomTabBar({Key? key, required this.tabs}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            tabs: widget.tabs,
            controller: _tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text("One", style: TextStyle(fontSize: 50))),
                Center(child: Text("Two", style: TextStyle(fontSize: 50))),
                Center(child: Text("Three", style: TextStyle(fontSize: 50))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomTabBar(
      tabs: [
        Tab(text: "One"),
        Tab(text: "Two"),
        Tab(text: "Three"),
      ],
    ),
  ));
}
