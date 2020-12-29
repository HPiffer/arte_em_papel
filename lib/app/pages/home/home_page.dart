import 'package:arte_em_papel/app/pages/home/widgets/home_drawer_widget.dart';
import 'package:flutter/material.dart';

// =========================================== //
// Home Page
// =========================================== //
class HomePage extends StatefulWidget {
  final String title;

  HomePage({
    @required this.title,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // =========================================== //
  // Declarations
  // =========================================== //

  // =========================================== //
  // Functions
  // =========================================== //
  // TODO code functions here

  // =========================================== //
  // Screen
  // =========================================== //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: HomeDrawer(),
      body: Center(),
    );
  }
}
