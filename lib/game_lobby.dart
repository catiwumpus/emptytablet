import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class GameLobbyPage extends StatelessWidget {
  const GameLobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Neumorphic(
                margin: EdgeInsets.only(top: 30),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.beveled(
                    BorderRadius.circular(5),
                  ),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.white,
                ),
                child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 500, minHeight: 200),
                    child: Center(
                      child: Text(
                        "_________ WangDoodle",
                        style: TextStyle(fontSize: 40),
                      ),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlipCard(
                front: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Front of Player Card"),
                  ),
                ),
                back: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Back of Player Card"),
                  ),
                ),
              ),
              FlipCard(
                front: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Front of Player Card"),
                  ),
                ),
                back: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Back of Player Card"),
                  ),
                ),
              ),
              FlipCard(
                front: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Front of Player Card"),
                  ),
                ),
                back: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Back of Player Card"),
                  ),
                ),
              ),
              FlipCard(
                front: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Front of Player Card"),
                  ),
                ),
                back: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(5),
                    ),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      minWidth: 350,
                    ),
                    child: Text("Back of Player Card"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
