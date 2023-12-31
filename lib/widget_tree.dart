import 'package:flutter/material.dart';
import 'pages/login_register_page.dart';
import 'pages/home_page.dart';
import 'auth.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeStateState();
}

class _WidgetTreeStateState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot){
      if(snapshot.hasData){
      return HomePage();
      }
      else{
      return const LoginPage();
      }
      },);;
        }
      }
