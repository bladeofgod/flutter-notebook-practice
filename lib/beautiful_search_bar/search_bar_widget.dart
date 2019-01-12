import 'package:flutter/material.dart';

import 'assets.dart';

class SearchBarWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SearchBarWidgetState();
  }

}

class _SearchBarWidgetState extends State<SearchBarWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('beautiful search bar'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: ()=>
          showSearch(context: context, delegate: SearchBarDelegate())),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear), onPressed: ()=>query = "")];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: ()=>close(context,null));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List suggestions = query.isEmpty ?
        recentSuggest : searchList.where((input)=>input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context,index)=>ListTile(
        title: RichText(text: TextSpan(
          text: suggestions[index].substring(0,query.length),
          style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: suggestions[index].substring(query.length),
              style: TextStyle(color: Colors.grey)
            )
          ]
        )),
      ),
    );
  }

}

















