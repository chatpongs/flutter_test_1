import 'package:flutter/material.dart';

class Consent extends StatelessWidget {
  Widget _buildText(context) {
    return Text(
      'อาร์ติสต์โปรเจ็คท์คำตอบทอม มือถือฮัลโหลทอล์คพันธุวิศวกรรมปาสคาล ต่อรอง'
          'โบว์ลิ่งโฟม วอลนัทโดมิโน วัจนะแอดมิสชันบิ๊กแดรี่นรีแพทย์ ผ้าห่มลอจิสติกส์ตื้บไหร่แอสเตอร์'
          'จูเนียร์แอโรบิคแป๋วซื่อบื้อ มินต์ โบรชัวร์โคโยตีเท็กซ์ซิมโฟนีโปรดิวเซอร์'
          'ชินบัญชรคอรัปชั่น เพนกวินตุ๊กตุ๊กภควัมปติ มลภาวะนิวส์ซะ โหลนอิเหนาแพ็คโอยัวะ'
          'ออร์แกนคอร์ส แคทวอล์คสามช่ามาร์ชแคร์แอโรบิค',
    );
  }

  build(context) {
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
            image: AssetImage('assets/images/consent-bg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.grey,
              BlendMode.multiply,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ข้อตกลงในการใช้งาน',
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Color.fromARGB(200, 255, 255, 255),
              ),
              padding: EdgeInsets.all(20.0),
              child: _buildText(context),
            ),
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Text('ยกเลิก'),
                  onPressed: () => Navigator.pop(context),
                ),
                RaisedButton(
                  child: Text('ตกลง'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
