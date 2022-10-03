part of '../pages.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dota 2'),
        ),
        body: Container(
            child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/dota_banner.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16.0, right: 16.0),
                      child: FloatingActionButton(
                        onPressed: () => {
                          setState(() {
                            isFavorite = !isFavorite;
                          })
                        },
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite,
                            color: (isFavorite ? Colors.red : Colors.grey)),
                      ),
                    )
                  ],
                )),
            Flexible(
              flex: 1,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: Row(
                  children: const [
                    Flexible(
                        flex: 1,
                        child: CardWidget(url: 'assets/images/item1.jpg')),
                    Flexible(
                        flex: 1,
                        child: CardWidget(url: 'assets/images/item2.jpg')),
                    Flexible(
                        flex: 1,
                        child: CardWidget(url: 'assets/images/item3.jpg')),
                    Flexible(
                        flex: 1,
                        child: CardWidget(url: 'assets/images/item1.jpg')),
                  ],
                ),
              ),
            ),
            Container(
                child: const Text(
              "Dota 2",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            )),
            Flexible(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                        children: [
                          TextSpan(
                              text: 'The most-played game on Steam.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "\nEvery day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it's their 10th hour of play or 1,000th, there's always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has truly taken on a life of its own."),
                          TextSpan(
                              text:
                                  '\n\nOne Battlefield. Infinite Possibilities.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "\nWhen it comes to diversity of heroes, abilities, and powerful items, Dota boasts an endless array—no two games are the same. Any hero can fill multiple roles, and there's an abundance of items to help meet the needs of each game. Dota doesn't provide limitations on how to play, it empowers you to express your own style."),
                          TextSpan(
                              text: '\n\nAll heroes are free.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "\nCompetitive balance is Dota's crown jewel, and to ensure everyone is playing on an even field, the core content of the game—like the vast pool of heroes—is available to all players. Fans can collect cosmetics for heroes and fun add-ons for the world they inhabit, but everything you need to play is already included before you join your first match."),
                          TextSpan(
                              text: '\n\nBring your friends and party up.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
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
