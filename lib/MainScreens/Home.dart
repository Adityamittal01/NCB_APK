import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: const [
          ListTile(
            isThreeLine: true,
            title: Text('Good Morning, \n Welcome!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
            subtitle: Text("Here are today's action for you", style: TextStyle(fontSize: 18),),
            trailing: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(Icons.account_circle, size: 80,color: Colors.black,),
            ),
          )
        ],
      )
      ,
    );
  }
}
