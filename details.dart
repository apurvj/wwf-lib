import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.name, this.picture});
  final String name;
  final String picture;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
        child: ListView(
          children: <Widget>[
            Container(
                height: 240,
                child: new Hero(
                  tag: name,
                  child: new Image.asset(
                    "assets/images/$picture",
                    fit: BoxFit.cover,
                  ),
                )),
            new Supername(
              name: name,
            ),
            new IconTxtData(),
            new Textdata(),
          ],
        ),
      ),
    );
  }
}

class Supername extends StatefulWidget {
  Supername({this.name});
  final String name;

  @override
  _SupernameState createState() => _SupernameState();
}

class _SupernameState extends State<Supername> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                ),
                new Text(
                  "${widget.name}\@gmail.com",
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                )
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  liked ? Icons.star : Icons.star_border,
                  size: 30.0,
                  color: liked ? Colors.red : Colors.grey,
                ),
                onPressed: () => setState(() {
                      liked = !liked;
                    }),
              ),
              new Text(
                "14",
                style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconTxtData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: new Row(
        children: <Widget>[
          IconTxt(
            icon: Icons.call,
            text: "Phone",
          ),
          IconTxt(
            icon: Icons.message,
            text: "Message",
          ),
          IconTxt(
            icon: Icons.photo,
            text: "Photos",
          ),
        ],
      ),
    );
  }
}

class IconTxt extends StatelessWidget {
  IconTxt({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue[900],
          ),
        ],
      ),
    );
  }
}

class Textdata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: new Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Nisl pretium fusce id velit ut tortor pretium viverra. Eu turpis egestas pretium aenean pharetra magna ac placerat. Aliquet porttitor lacus luctus accumsan. Laoreet sit amet cursus sit amet. Tristique senectus et netus et malesuada fames ac. At quis risus sed vulputate odio ut. Facilisis magna etiam tempor orci eu. Et pharetra pharetra massa massa ultricies mi. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Velit scelerisque in dictum non consectetur a erat nam at. Est ante in nibh mauris cursus mattis molestie a iaculis."

              "Nisl purus in mollis nunc sed id semper. Scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis. Nascetur ridiculus mus mauris vitae ultricies. Amet dictum sit amet justo donec enim. Nunc scelerisque viverra mauris in aliquam sem fringilla ut. Augue mauris augue neque gravida. Nunc eget lorem dolor sed viverra ipsum. In metus vulputate eu scelerisque felis imperdiet. Tellus integer feugiat scelerisque varius morbi enim. Nulla facilisi cras fermentum odio. Eget nulla facilisi etiam dignissim diam quis enim. Consectetur a erat nam at lectus urna. Nulla facilisi etiam dignissim diam. Tincidunt nunc pulvinar sapien et. Vitae congue mauris rhoncus aenean vel elit. Purus sit amet luctus venenatis lectus magna fringilla urna. Iaculis eu non diam phasellus vestibulum lorem sed. Aliquet risus feugiat in ante. Gravida neque convallis a cras semper auctor neque vitae tempus.",
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
