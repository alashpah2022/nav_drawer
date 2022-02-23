import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextForm({
  String? label,
  String? hint,
  String? imagePath,
  // double? imageWidth,
  // double? imageHeight,
  TextInputType? type,
  Widget? suffixICon,
  bool isPassword = false,
  Function()? onTap,
  TextEditingController? controller,
}) =>
    Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white12,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Center(
        child: Center(
          child: TextFormField(
            cursorColor: Colors.white,
            textAlign: TextAlign.left,
            obscuringCharacter: '*',
            keyboardType: type,
            obscureText: isPassword,
            onTap: onTap,

            style: const TextStyle(
              //height: .05,
              color: Colors.white,
            ),
            controller: controller,

            decoration: InputDecoration(
              border: InputBorder.none,
              alignLabelWithHint: true,
              suffixIcon: suffixICon,

              // focusedBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Color(0xFF32A5F8),),
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.white,),
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),


              hintText: hint,
              labelText: label,

              labelStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),

              hintStyle: const TextStyle(
                color: Colors.grey,
                textBaseline: TextBaseline.alphabetic,
                fontSize: 15,
              ),
              //  icon:

              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color(0xFF32A5F8),
                  // 0xFF for spcifying  transparency
                  child: Image.asset(
                    imagePath!,
                    alignment: AlignmentDirectional.center,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );