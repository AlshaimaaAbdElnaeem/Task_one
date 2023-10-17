import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/models/item_provider.dart';
import 'package:task_one/models/list_items.dart';
import 'package:task_one/views/home_view.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (BuildContext context) => ListItems(),
        ),
       ChangeNotifierProxyProvider<ListItems , ItemProvider>(create: (context)=> ItemProvider(), update:(context,catalog , cart){
     if (cart == null){
      throw ArgumentError.notNull("cart");
     }else {
     cart.items = catalog ;
     return cart ;
     }
    } )
      ],
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
