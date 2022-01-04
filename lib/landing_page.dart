import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    return Container(
      alignment: FractionalOffset.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 150, minHeight: 75),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/new');
                    },
                    child: Text("New Game"))),
            SizedBox(
              width: 50,
            ),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 150, minHeight: 75),
                child: ElevatedButton(
                    onPressed: () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Please choose a Player Name"),
                            content: Container(
                              width: 40,
                              child: TextField(
                                maxLines: 1,
                                onChanged: (text) {
                                  name = text;
                                },
                              ),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/pre-game');
                                  },
                                  child: Text("Join Game!"))
                            ],
                          ),
                        ),
                    child: Text("Join Game")))
          ],
        ),
      ),
    );
  }
}

Widget build(BuildContext context) {
  return TextButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('AlertDialog Tilte'),
        content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    ),
    child: const Text('Show Dialog'),
  );
}
