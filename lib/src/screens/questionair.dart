import 'package:flutter/material.dart';

class Questionair extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuestionairState();
}

class _QuestionairState extends State<Questionair> {
  int selected = 0;

  void setChoice(number) {
    setState(() {
      selected = number;
    });
  }

  Widget _buildQuestion() {
    return Text('1. คุณเห็นด้วยหรือไม่ที่ลิเวอร์พูลจะคว้าแชมป์ฤดูกาลนี้');
  }

  Widget _buildChoices() {
    final choices = [5, 4, 3, 2, 1];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: choices.map(
        (choice) {
          return Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 2.0,
                  child: Checkbox(
                    value: choice == selected,
                    onChanged: (checked) {
                      if (checked) setChoice(choice);
                    },
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  choice.toString(),
                  style: Theme.of(context).textTheme.title,
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '[ชื่อโครงการ]',
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/questionair-bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'แบบสอบถาม',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 20.0,
              ),
              _buildQuestion(),
              SizedBox(
                height: 20.0,
              ),
              _buildChoices(),
              ButtonBar(
                children: <Widget>[
                  OutlineButton.icon(
                    icon: Icon(Icons.home),
                    label: Text('กลับหน้าแรก'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),
                  RaisedButton.icon(
                    icon: Icon(Icons.forward),
                    label: Text('ข้อต่อไป'),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
