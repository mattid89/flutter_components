import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(right: 10.0),
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage('assets/profile.png'),
          //     maxRadius: 30.0,
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MD'),
              backgroundColor: Colors.redAccent,
              maxRadius: 25.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://cdn.naturettl.com/wp-content/uploads/2017/02/22014001/top-tips-improve-landscapes-ross-hoddinott-11-900x601.jpg'),
            fadeInDuration: Duration(milliseconds: 400),
        ),
      ),
    );
  }
}
