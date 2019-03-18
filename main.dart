import 'package:flutter/material.dart';
import 'package:hero/details.dart';

void main() => runApp(MaterialApp(
      title: 'HeroApp',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    ));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Container> drafterSuperHero = new List();

  var superstars = [
    {"name": "Andre The Giant", "picture": "andre.jpg", "textdata":"A true spectacle of a man, standing over 7 feet tall and weighing around 550 pounds, Andre holds a reputation as being the greatest ‘big man’ in wrestling. Andre’s defining moment came during his legendary feud with Hulk Hogan, and its culmination at Wrestlemania III; which contributed to the event’s massive attendance. Hogan body slammed the giant to produce one of the most memorable moments in WWF/E history. "},
    {"name": "Big Boss Man", "picture": "boss.jpg","textdata":"The former prison guard from Cobb County, Georgia burst onto the scene in WWF in the late 80’s, feuding with main-eventers Hulk Hogan and Randy Savage. Brandishing his nightstick, he promised to deliver ‘Hard Times’ to his opponents. Boss Man was a larger than life character who embodied the cartoonish nature of the golden era, whilst also being a serious worker."},
    {"name": "Demolition", "picture": "demolition.jpg","textdata":"A powerhouse team who lacked technical skill, but still put on entertaining matches with a brute force style. Ax and Smash battled all the prominent teams of the golden era who’re features on this list, racking up 3 tag team title reigns. With their S&M Mad Max inspired look, along with their brawling style, Demolition were a popular team with an impressive legacy."},
    {"name": "Earthquake", "picture": "earthquake.jpg","textdata":"Deceptively agile for a man who was 6ft 7 and 468 pounds, Earthquake was an underrated big man of his era. He feuded with big names such as Hulk Hogan and Jake Roberts, with the peak of his career being a match against Hogan at SummerSlam 1990. Earthquake went on to form the Natural Disasters with Typhoon, and captured the tag team titles."},
    {"name": "Haku", "picture": "haku.jpg","textdata":"Considered one of the toughest men in wrestling, the Tongan made a name for himself as a part of Bobby Heenan’s stable ‘The Heenan Family’. Haku’s career highlights included being anointed as ‘King’ Haku, and holding the tag team titles with Andre the Giant as ‘The Colossal Connection."},
    {"name": "Honky Tonk Man", "picture": "honky.jpg","textdata":"An example of an outlandish character who held a prominent role in the golden era, and is fondly remembered by fans today. Playing the role of an Elvis impersonator, Honky was a much reviled heel who used numerous forms of chicanery to win matches/retain his title. Honky’s prominence came from his Intercontinental title reign, holding it for a record 454 days; confirming his place as the greatest Intercontinental champion of all time. "},
    {"name": "Hulk Hogan", "picture": "hulk.jpg","textdata":"Simply put; there is no golden era without Hulk Hogan. The WWF’s top star throughout the era, his superstardom helped carry them into the mainstream. There are too many memorable feuds/highlights involving the Hulkster to recap in this paragraph. His impact on the golden era, and pro wrestling as a whole cannot be overstated."},
    {"name": "Jake Roberts", "picture": "jake.png","textdata":"A silver-tongued devil, Jake Roberts was one of the best talkers in wrestling, delivering chilling promos in a calm, pernicious manner. But it wasn’t just Roberts’ talking that defined him, he was a master of psychology; building his matches around his DDT finisher, probably the most popular move of the era."},
    {"name": "King Kong Bundy", "picture": "king.jpg","textdata":"Despite resembling an angry egg, Bundy was a major player at the start of the golden era due to his tremendous size. The first Wrestlemania saw him defeat jobber S.D Jones in supposedly 9 seconds (but was actually 24). His career highlight came at Wrestlemania II; challenging Hulk Hogan for the WWF title in a steel cage match. Bundy’s career petered out after that, with his next Wrestlemania appearance being in a six-man tag match involving midget-wrestlers; one of whom he crushed, before leaving the company."},
    {"name": "Randy Savage", "picture": "macho.jpg","textdata":"Many would assume that Hogan would get the top spot, but the Macho Man edges it due to all that he encompasses. Great in the ring; with show stealing matches against Ricky Steamboat, Ultimate Warrior, and Ric Flair at Wrestlemania’s III, VII, and VIII. Great on the mic; delivering captivating, entertaining promos to make him the best talker of the golden era. And many memorable moments; his Intercontinental title reigh/feud with Steamboat, his WWF title victory and the amazing Mega Powers storyline with Hulk Hogan, and his reunion/marriage to Miss Elizabeth."},
    {"name": "Psycho Sid", "picture": "psycho.jpg","textdata":"His first initial and brief run came at the tail-end of the golden era, in a storyline involving him being aligned with, and then betraying Hulk Hogan. Basically a less impressive version of the Mega-Powers storyline; highlighted by an unimpressive Wrestlemania VIII main event. But, Sid was an impressive specimen, and an intimidating monster heel."},
    {"name": "Ric Flair", "picture": "ric.jpg","textdata":"With his first WWF run only lasting a year and a half, you may wonder why Flair is placed so high on the list. But Flair owned it, with incredible promos and great matches. It wasn’t long after his debut that Flair gave the greatest Royal Rumble performance in history, lasting over 60 minutes to win the vacant WWF title in 1992, later stealing the show at Wrestlemania VIII against Randy Savage."},
    {"name": "Ultimate Warrior", "picture": "ultimate.jpg","textdata":"What the Warrior lacked in technical ability, he more than made up for in energy and character. The face-painted, muscle-bound, larger-than-life persona captured the imagination of the fans; resulting in his popularity and rise to stardom. His 27 second Intercontinental title victory over the Honky Tonk Man at SummerSlam 1988 was only surpassed when he defeated Hulk Hogan in ‘the Ultimate Challenge’ at Wrestlemania VI to win the WWF title."},
    {"name": "The Undertaker", "picture": "undertaker.jpg","textdata":"Debuting at the 1990 Survivor Series at the age of 25, young Mark Callaway made an immediate impact as the character that would define him for the next 25 years. He played the role of the undead wrestler impervious to pain to perfection, while others would’ve faltered. Even in his early years ‘taker feuded with big stars such as the Ultimate Warrior, Jake Roberts, and even won the WWF title from Hulk Hogan for 6 days. Even in his early years, the Dead man showed glimmers of greatness that would carry on into a legendary career."},
  ];

  _buildlist() async {
    for (var i = 0; i < superstars.length; i++) {
      final superstarnew = superstars[i];
      final String picture = superstarnew["picture"];
      drafterSuperHero.add(new Container(
        padding: EdgeInsets.all(8.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                  tag: superstarnew["name"],
                  child: new Material(
                    child: new InkWell(
                      child: new Image.asset(
                        "assets/images/$picture",
                        fit: BoxFit.cover,
                      ),
                      onTap: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Detail(
                                    name: superstarnew["name"],
                                    picture: superstarnew["picture"],
                                  ))),
                    ),
                  )),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text(
                superstarnew["name"],
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buildlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "WWF Legends",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/back.jpg"),
          fit: BoxFit.fill,
        )),
        child: new GridView.count(
          crossAxisCount: 2,
          children: drafterSuperHero,
        ),
      ),
    );
  }
}

