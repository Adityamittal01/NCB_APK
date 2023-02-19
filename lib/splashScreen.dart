import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncb/welcome.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4)).then((value) =>
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> welcomeScreen()), (route) => false));
    return Scaffold(
      body:Container(
        child: Image.asset('assets/images/main.jpg', fit: BoxFit.cover, repeat: ImageRepeat.noRepeat,),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
