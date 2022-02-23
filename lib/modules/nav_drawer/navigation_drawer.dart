import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:t/theme/colors.dart';

class NavDrawer extends StatelessWidget {

  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
             navBox(),
              const SizedBox(height: 20,),
              navItem(
                  txt: const Text('Language'),
                  icon: const Icon(Icons.language,color: Colors.indigo,),
              ),
              const SizedBox(height: 20,),
              navItem(
                txt: const Text('Settings'),
                icon: const Icon(Icons.settings,color: Colors.indigo,),
              ),
              const SizedBox(height: 20,),
              navItem(
                txt: const Text('Log out'),
                icon: const Icon(Icons.logout,color: Colors.indigo,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget navItem({
  Widget? txt,
  Widget? icon,
  Function()? onTap,
}) =>
    ListTile(

      title: txt,
      leading: icon,
      onTap: onTap,
    );

Widget navBox() => Container(
    decoration:  BoxDecoration(
      gradient: AppColors().base,
    ),
    height: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Stack(
          alignment: AlignmentDirectional.center,
          children:
          [
            Image.asset('assets/icons/round circle.png'),
            Image.asset('assets/icons/male-avatar.png'),
          ],
        ),
       const Padding(
          padding:  EdgeInsets.only(top: 15,),
          child:  Text('IbnuNafis', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
        ) // from database
      ],
    ),
  );
