import 'package:flutter/material.dart';

// Write the main.
void main() => runApp(PresentationWidget());



class PresentationWidget extends StatefulWidget {
  @override
  _PresentationWidgetState createState() => _PresentationWidgetState();
}

class _PresentationWidgetState extends State<PresentationWidget> {

  // Declare private variables.
  String _lastName = "";
  String _firstName = "";


  Widget _buildPresentationBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[

          Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Who are you ?',
                style: TextStyle(fontSize: 40.0),
              )),

          // This widget display the first and last name.
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text('$_firstName $_lastName', style: TextStyle(fontSize: 30.0)),
          ),

          // User input
          Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                children: <Widget>[

                  // First name input.
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _firstName = text;
                        });
                      },
                      decoration:
                      InputDecoration(hintText: 'Type your first name'),
                    ),
                  ),

                  // Last name input.
                  Padding(
                    padding: EdgeInsets.only(bottom: 8, top: 8),
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          _lastName = text;
                        });
                      },
                      decoration:
                      InputDecoration(hintText: 'Type your last name'),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Presentation app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Presentation'),
        ),
        body: _buildPresentationBody(),
      ),
    );
  }

}
