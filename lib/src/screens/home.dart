import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget _buildText(context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Color.fromARGB(200, 255, 255, 255),
      ),
      padding: EdgeInsets.all(20.0),
      child: Text(
        'ไทยแลนด์แคนยอนมาร์ค บัตเตอร์เซาท์พรีเมียร์ ฟยอร์ด ออทิสติกสลัมเคลียร์บาร์บีคิว'
            'อร์เกอร์ ซิมโฟนี่เบอร์เกอร์อีแต๋นมิลค์พันธุวิศวกรรม ฮัลโหลพรีเมียม แบคโฮปูอัด'
            'อง โบว์ลิ่งโฟม วอลนัทโดมิโน วัจนะแอดมิสชันบิ๊กแดรี่นรีแพ',
      ),
    );
  }

  Widget _buildButton(context) {
    return RaisedButton(
      child: Text('ตกลง'),
      onPressed: () {
        Navigator.pushNamed(context, '/consent');
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '[ชื่อโครงการ]',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.multiply,
            ),
            image: AssetImage('assets/images/home-bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ที่มาของโครงการ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            _buildText(context),
            SizedBox(
              height: 20.0,
            ),
            _buildButton(context),
          ],
        ),
      ),
    );
  }
}
