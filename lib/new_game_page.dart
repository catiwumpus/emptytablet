import 'package:flutter/material.dart';

class NewGame extends StatelessWidget {
  const NewGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    int numberOfPlayers;
    int gameLength;
    return Material(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              children: [
                Text("Player Name"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Container(
                    width: 300,
                    child: TextField(
                      maxLines: 1,
                      onChanged: (text) {
                        name = text;
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Number of Players"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Container(
                    width: 40,
                    child: TextField(
                      maxLines: 1,
                      onChanged: (text) {
                        name = text;
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Game Length"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Container(
                    width: 40,
                    child: TextField(
                      maxLines: 1,
                      onChanged: (text) {
                        name = text;
                      },
                    ),
                  ),
                )
              ],
            ),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 150, minHeight: 75),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/lobby');
                    },
                    child: Text("Start Game!")))
          ],
        ),
      ),
    );
  }
}
