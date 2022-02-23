import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButtton({
  Color? backGround,
  String? txt,
  Function()? onPress,

}) =>
    ElevatedButton(

      child: Text(
        txt!,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 22.0,
        ),
      ),

      // fixedSize: MaterialStateProperty.resolveWith <Size> (
      //         (Set<MaterialState> states) {
      //           return const Size(double.infinity, 45);
      //     },
      // ),
      // backgroundColor: MaterialStateProperty.resolveWith<Color>(
      //       (Set<MaterialState> states) {
      //     if (states.contains(MaterialState.pressed))
      //       {
      //         return Colors.red;
      //       }
      //     return Colors.blue!;
      //   },
      // ),

      style: ElevatedButton.styleFrom(
        //onSurface: surfaceColor,
        minimumSize: const Size(double.infinity, 45),
        primary: backGround,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      onPressed: onPress,
    );