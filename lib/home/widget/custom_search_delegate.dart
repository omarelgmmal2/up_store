import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {

  List<String> searchItems = [
    "iPhone 11 64GB",
    "Shoes of Nike",
    "Blue INDURE Shoes",
    "Blue Bata Shoes",
    "Bink Bata shirt",
    "Red Bata jaket",
    "blue Bata jaket",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in searchItems){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result,
            style: TextStyleTheme.textStyle13Medium,
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in searchItems){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title:  Text(
            result,
            style: TextStyleTheme.textStyle13Medium,
          ),
        );
      },
    );
  }
}