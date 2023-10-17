import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/constans.dart';
import 'package:task_one/models/item_model.dart';

import 'package:task_one/models/item_provider.dart';

class TwoButtom extends StatefulWidget {
  const TwoButtom({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  State<TwoButtom> createState() => _TwoButtomState();
}

class _TwoButtomState extends State<TwoButtom> {
  @override
  Widget build(BuildContext context) {
    var increment = context.watch<ItemProvider>();
    var inFavorit = context
        .select<ItemProvider, bool>((cart) => cart.item.contains(widget.item));
    return Row(
      children: [
        ElevatedButton.icon(
            onPressed: inFavorit
                ? null
                : () {
                    Provider.of<ItemProvider>(context , listen: false).add(widget.item);
                  },
            icon: Icon(
              Icons.favorite,
              color: inFavorit  ==false ? Colors.white : kPrimaryColor,
            ),
            label: Text(
              'Like',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            )),
        const SizedBox(
          width: 35,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {
              increment.incrementId++;
            },
            child: Text(
              'Next',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
