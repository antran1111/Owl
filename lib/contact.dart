import 'package:flutter/material.dart';

void main() {
  runApp(OwlContact());
}

//type in stless and will automatically create new StatelessWidget
//create a MyApp that returns the MaterialApp design and then in your main you can call that
class OwlContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blueAccent,
                //backgroundImage: AssetImage('images/ninja.png'), //my assetimage is not loading
                backgroundImage: NetworkImage('http://images.neopets.com/template_images/kacheek_lollypop.gif')
              ),
              Card(
                color: Colors.red,
                child: Text(
                  'Hello, I\'m an Owl',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Professional Flying Owl',
                style: TextStyle(
                    fontFamily: 'Literata',
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              ReusableCard(
                text: 'Phone Number: Coming Soon!',
                icon: Icons.phone,
              ),
              ReusableCard(
                text: 'Email : CSSuccessGamer@gmail.com',
                icon: Icons.email,
              ),
              ReusableCard(
                text: 'Url: Instagram.com/successgamer1',
                icon: Icons.web_asset,
              ),
              ReusableCard(
                text:  'YouTube ID: CS Success Gamer',
                icon: Icons.video_library,
              ),



            ],
          ),
        ),
      ),
    ); //so remember to material app ends with );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.text, @required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      // padding: EdgeInsets.all(10.0),
      color: Colors.grey,
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        //removed row,widget, added ListTile
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontFamily: 'Literata'),
        ),
      ),
    );
  }
}
