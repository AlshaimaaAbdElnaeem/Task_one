
class ItemModel {
   int id ;
final String name ;

ItemModel({this.id = 0, required this.name});
@override
      int get hashcode => id;
      @override
      bool operator == (Object object)=> object is ItemModel && object.id ==id ;

}