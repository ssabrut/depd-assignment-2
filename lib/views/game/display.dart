part of '../pages.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dota 2'),
        ),
        body: Container(
            margin: const EdgeInsets.all(0),
            child: Column(
              children: [
                Flexible(
                    flex: 2,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        const Image(
                          image: AssetImage('assets/images/dota_banner.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8.0, right: 8.0),
                          child: FloatingActionButton(
                            onPressed: () => {},
                            backgroundColor: Colors.white,
                            child:
                                const Icon(Icons.favorite, color: Colors.grey),
                          ),
                        )
                      ],
                    )),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/item1.jpg'),
                                    fit: BoxFit.fill),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/item2.jpg'),
                                    fit: BoxFit.fill),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/item3.jpg'),
                                    fit: BoxFit.fill),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/item4.jpg'),
                                    fit: BoxFit.fill),
                                border: Border.all(color: Colors.transparent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 8.0),
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: const TextSpan(
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0),
                            children: [
                              TextSpan(
                                  text: 'The most-played game on Steam.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      "\nEvery day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it's their 10th hour of play or 1,000th, there's always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has truly taken on a life of its own."),
                              TextSpan(
                                  text:
                                      '\n\nOne Battlefield. Infinite Possibilities.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      "\nWhen it comes to diversity of heroes, abilities, and powerful items, Dota boasts an endless array—no two games are the same. Any hero can fill multiple roles, and there's an abundance of items to help meet the needs of each game. Dota doesn't provide limitations on how to play, it empowers you to express your own style."),
                              TextSpan(
                                  text: '\n\nAll heroes are free.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      "\nCompetitive balance is Dota's crown jewel, and to ensure everyone is playing on an even field, the core content of the game—like the vast pool of heroes—is available to all players. Fans can collect cosmetics for heroes and fun add-ons for the world they inhabit, but everything you need to play is already included before you join your first match."),
                              TextSpan(
                                  text: '\n\nBring your friends and party up.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      "\nDota is deep, and constantly evolving, but it's never too late to join. Learn the ropes playing co-op vs. bots. Sharpen your skills in the hero demo mode. Jump into the behavior- and skill-based matchmaking system that ensures you'llbe matched with the right players each game."),
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
