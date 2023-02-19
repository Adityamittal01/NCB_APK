import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncb/homeScreen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  final List<String> languages = [
    'English',
    'Hindi',
  ];
  String selectedValue= 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(30, 60, 30, 50),
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/images/moha.png'),),
            ),
            Container(
              width: 250,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Welcome', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                  Text('Choose your preffered language', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  DropdownButtonFormField(items: languages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      alignment: Alignment.centerRight,
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                    onChanged: (value){
                    setState(() {
                      selectedValue=value!.trim();
                    });
                    Navigator.push((context), MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                    value: selectedValue,
                  ),
                  
                ],
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: const [
                  Image(image: AssetImage('assets/images/ncb.png'), height: 64,),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Narcotics Control Bureau', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),

                ],
              ),
            ),
          ],
        )


    ));
  }
}
