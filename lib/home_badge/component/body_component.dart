import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../body_list.dart';
import '../provied/proved.dart';

class BodyComponent extends StatelessWidget {
  const BodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final providerCat = Provider.of<SearchProvider>(context);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child:
              Consumer<SearchProvider>(builder: (context, searchProvider, v) {
            return SearchBar(
              hintText: "Search by pet type",
              leading: Icon(Icons.search),
              onChanged: (text) {
                searchProvider.filterSearchResults(text);
              },
            );
          }),
        ),
        BodyList(),
      ],
    );
  }
}
