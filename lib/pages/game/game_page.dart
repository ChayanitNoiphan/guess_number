// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //wrap หรือ remove กด alt+enter
            title: Row(
          children: [
            Container(
                decoration:
                   BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
                child: Icon(
                  Icons.accessibility,
                  color: Theme.of(context).primaryColor, //ถ้าขึ้น error ให้ลบ const
                ),
                ),
            SizedBox(width: 10),
            Text('GUESS THE NUMBER'),
          ],
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,// มีทั้งหมด 3 เเบบ ออกเรื่งนี้ด้วย
          children: [
            Text('Please guess the number between 1 and 100'),
            TextField(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: OutlinedButton(
                onPressed: (){
                  //todo;
                },
                child: Text('GUESS'),
              ),
            ),
          ],
        ),
    );//ใส่ const เพื่อไม่ให้มีwarning
  }
}
