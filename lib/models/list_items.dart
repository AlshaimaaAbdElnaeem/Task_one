import 'package:task_one/models/item_model.dart';
class ListItems  {
  List<String> itemNames = [
    'Waistcom',
    'crosspitch',
    'Waiched',
    'Watched',
    'Waistcom',
    'crosspitch',
    'Waiched',
    'Watched',
    'Waistcom',
    'crosspitch',
    'Waiched',
    'Watched',
    'Waistcom',
    'crosspitch',
    'Waiched',
    'Watched',
    'Waistcom',
    'crosspitch',
    'Waiched',
  ]; 
  ItemModel getById( int id) {
    return ItemModel(
      id: id,
      name: itemNames[id % itemNames.length],
    );
  }
}
