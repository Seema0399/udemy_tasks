import 'package:flutter/material.dart';

class ListDetail extends StatefulWidget {
  @override
  _ListDetailState createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  final List<String> listOf = [
    'Apple',
    'Food',
    'Product',
    'Item',
    'List View',
    'NewApp',
    'Design',
    'Job'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View builder',
          style: TextStyle(fontSize: 19),
        ),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => debugPrint('Add'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('Search'),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, index) => ListDataItem(this.listOf[index]),
          itemCount: this.listOf.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('FB button Pressed'),
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class ListDataItem extends StatelessWidget {
  String itemName;
  ListDataItem(this.itemName);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        margin: EdgeInsets.all(9),
        padding: EdgeInsets.all(6),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(itemName[0]),
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              itemName,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
