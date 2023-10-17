import 'package:flutter/material.dart';

class HomeAndFevorites extends StatelessWidget {
  const HomeAndFevorites({super.key, required this.icon, required this.onPressed, required this.text, required this.left, required this.color});
final IconData icon ;
final Function() onPressed;
final double left ;
final String text;
final bool color ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onPressed ,
      child: Row(
                children: [
                   Container(
                    width:50,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color:color == false &&text=='Home' ||color == true&&text == 'Favorites' ? const Color(0xffFFD9E2):null,),
         margin: EdgeInsets.only(top:16.0 , right: 16.0 , left: left , bottom: 4,),
                    child:  Icon(icon, size: 26,)),
                    Padding(
                     padding: const EdgeInsets.only(top:16.0),
                     child:  Text(text,
                        style: const TextStyle(
                          color: Colors.black,
                        )),
                   ),
                ],
              ),
    );
  }
}