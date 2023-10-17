import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/models/item_provider.dart';

class FavoritView extends StatelessWidget {
  const FavoritView({super.key});

  @override
  Widget build(BuildContext context) {
    var value = context.watch<ItemProvider>();
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: double.infinity,
      color: const Color(0xffFFD9E2),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ItemFavorite(value: value),
      ),
    );
  }
}

class ItemFavorite extends StatelessWidget {
  const ItemFavorite({
    super.key,
    required this.value,
  });

  final ItemProvider value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: CustomScrollView(
       
        slivers: [
          SliverToBoxAdapter(child: Text('you have ${value.item.length} favorites')),
          SliverToBoxAdapter(
            child: ListView.builder(
              itemCount: value.item.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(value.item[index].name),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
