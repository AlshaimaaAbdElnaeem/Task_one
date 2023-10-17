import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_one/models/item_provider.dart';
import 'package:task_one/views/favorit_view.dart';
import 'package:task_one/views/product_view.dart';
import 'package:task_one/widgets/home_favorites_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isInPage = false ;
  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(
      builder: (BuildContext context, value, Widget? child) { 
        return Scaffold(
        body: Row(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:24.0),
                child: Column(
                  children: [
                    HomeAndFevorites(
                      left: 16,
                      icon: Icons.home,
                      onPressed: () {
                        isInPage = false;
                        setState(() {
                          
                        });
           
                      },
                      text: 'Home',
                      color: isInPage ,
                    ),
                    HomeAndFevorites(
                      icon: Icons.favorite,
                      left: 32,
                      onPressed: () {
                     isInPage = true;
                     setState(() {
                       
                     });
                      },
                      text: 'Favorites',
                      color:isInPage ,
                    ),
                  ],
                ),
              ),
            ],
          ),
          isInPage ==false ? ProductView():FavoritView(),
        ]),
      );
       },
    );
  }
}
