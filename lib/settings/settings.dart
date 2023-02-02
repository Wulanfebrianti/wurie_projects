import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Option', style: TextStyle(color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.bold),), centerTitle: true, backgroundColor: Colors.white,elevation: 0, ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20,),
          _texttitle('Account', Colors.indigo),
          card(Icons.person, 'Account', Colors.indigo),
          card(Icons.key, 'Change Password', Colors.indigo)
        ],
      ),
    );
  }
  
  Widget card(IconData _iconfront, String _text, Color _colors){
    return Card(
      elevation: 0.1,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Icon(_iconfront, size: 30, color: _colors,),),
            Container(child: Text(_text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: _colors), textAlign: TextAlign.left,), width: 250,),
            Container(child: Icon(Icons.arrow_forward_ios,  size: 20,color: _colors,),),
          ],
        ),
      )
    );
  }

  Widget _texttitle(String _text, Color _colors){
    return Container(
      padding: EdgeInsets.only(left: 20),
      width: double.infinity,
      child: Text(_text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: _colors), textAlign: TextAlign.left,),
    );
  }
}
