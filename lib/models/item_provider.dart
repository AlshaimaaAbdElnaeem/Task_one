import 'package:flutter/material.dart';
import 'package:task_one/models/item_model.dart';
import 'package:task_one/models/list_items.dart';

class ItemProvider extends ChangeNotifier{
late ListItems items ;
List <int> itemId = [] ;
ListItems get getItem => items ;
 set setItem (ListItems item){
items = item ;
notifyListeners();
}
int incrementId = 0 ;  
List<ItemModel> get item => itemId.map((id) => ListItems().getById(id)).toList();
void add (ItemModel item){
itemId.add(item.id);
notifyListeners();
}
}