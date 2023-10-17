import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/constans.dart';
import 'package:task_one/models/item_provider.dart';
import 'package:task_one/models/list_items.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
var cart = context.read<ListItems>();
var id = context.watch<ItemProvider>();
        return Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 25,
          ),
          child: Text(
               cart.getById(id.incrementId()).name ,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
            
        ),
          );
        
  }

}
