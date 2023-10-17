import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/models/item_provider.dart';
import 'package:task_one/models/list_items.dart';

import 'package:task_one/widgets/product_item.dart';
import 'package:task_one/widgets/two_button.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = context.read<ItemProvider>();
        var item = context.read<ListItems>().getById(itemProvider.incrementId());
        return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ProductItem(),
         TwoButtom(item: item,),
        ],
      )
      ;
     
  }
  }
