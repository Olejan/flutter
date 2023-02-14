import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;
  
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text('Какая пицца лучше?'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 25.0)),
                Text('Мухомор Красный', style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'MotelKingMedium',
                  color: Colors.red),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/amanita.png'),
                  radius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: [
                    Icon(Icons.mail_outline, size: 35),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('sevstar_gos@mail.ru', style: TextStyle(color: Colors.white, fontSize: 25),)
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Text('Count: $_count', style: TextStyle(fontSize: 25, color: Colors.blueGrey),)
              ],
            ),
            FloatingActionButton(onPressed: () {
              setState(() {
                _count++;
              });
              }, child: Text('+'),)
          ],
        ),
      ),
    );
  }
}
