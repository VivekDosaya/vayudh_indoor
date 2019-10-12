import 'package:flutter/material.dart';
import 'line_and_bar_graph.dart';

class ListViewData extends StatefulWidget {
  @override
  _ListViewDataState createState() => _ListViewDataState();
}

class _ListViewDataState extends State<ListViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "              Vayudh",
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: <Widget>[
            Ink(
              height: 75.0,
              color: Colors.amber[900],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Carbon Dioxide'),
                trailing: Text('36%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[800],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Carbon Monoxide'),
                trailing: Text('20%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[700],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Butanal'),
                trailing: Text('15%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[600],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Ethanol'),
                trailing: Text('11%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[500],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Formaldehyde'),
                trailing: Text('8%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[400],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Aromatic Compounds'),
                trailing: Text('6%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[300],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Sulphur Dioxide'),
                trailing: Text('3%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[200],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Propanal'),
                trailing: Text('0.6%'),
              ),
            ),
            Ink(
              height: 75.0,
              color: Colors.amber[100],
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                leading: Text('Methanal'),
                trailing: Text('0.4%'),
              ),
            ),
          ],
        ));
  }
}
