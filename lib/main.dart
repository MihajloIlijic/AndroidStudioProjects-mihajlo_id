import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyProject(),
    ));

class MyProject extends StatefulWidget {
  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {

  int rating = 1600;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Mihajlo Project'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {
          rating ++;
        }); },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Mihajlo Ilijic',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 30.0,
              ),
            ),
            Text(
              'Age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              '20',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 30.0,
              ),
            ),
            /*SizedBox(height: 30.0,),*/
            Text(
              'Passion',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Chess',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 30.0,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Text(
                    'Image of passion:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                    child: Image(
                        image: AssetImage('android/assets/cover_image.jpg')))
              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              children: <Widget> [
                Text(
                  'ELO-Rating:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(width: 20.0,),
                Text(
                  '$rating',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                    fontSize: 30.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
