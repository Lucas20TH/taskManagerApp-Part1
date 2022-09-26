import 'package:flutter/material.dart';
import 'difficulty.dart';

class ExercisesDark extends StatefulWidget {
  final String taskName;
  final String photo;
  final int level;

  const ExercisesDark(this.taskName, this.photo, this.level, {Key? key})
      : super(key: key);

  @override
  State<ExercisesDark> createState() => _ExercisesDarkState();
}

class _ExercisesDarkState extends State<ExercisesDark> {
  int nivel = 0;
  bool changeColor = false;
  var colorBar = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: changeColor == false
                      ? Colors.grey.shade900
                      : changeColorBar()),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade800,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade500,
                        ),
                        width: 72,
                        height: 100,
                        child: Image.asset(
                          widget.photo,
                          // Imagens estão no arquivo assets/images/, conferir no pubspec.yaml

                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 200,
                              child: Text(
                                widget.taskName,
                                style: const TextStyle(fontSize: 26),
                                overflow: TextOverflow.ellipsis,
                              )),
                          Difficulty(
                            difficultyLevel: widget.level,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                                if ((nivel / widget.level) / 10 > 1) {
                                  changeColor = true;
                                  colorBar++;
                                  nivel = 0;
                                } else {
                                  changeColor == false;
                                }
                              });
                              //print('$nivel');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  "UP",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 250,
                        child: LinearProgressIndicator(
                          color: changeColor == false
                              ? Colors.black
                              : changeLineBar(),
                          value: (widget.level > 0)
                              ? (nivel / widget.level) / 10
                              : 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Nível: $nivel",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  changeColorBar() {
    switch (colorBar) {
      case 1:
        return Colors.brown;

      case 2:
        return Colors.blueGrey;

      case 3:
        return Colors.lightGreen;

      case 4:
        return Colors.orangeAccent;

      case 5:
        return Colors.purpleAccent;

      default:
        return Colors.grey.shade900;
    }
  }
  changeLineBar() {
    switch (colorBar) {
      case 1:
        return Colors.brown.shade900;

      case 2:
        return Colors.blueGrey.shade900;

      case 3:
        return Colors.lightGreen.shade900;

      case 4:
        return Colors.orangeAccent.shade700;

      case 5:
        return Colors.purpleAccent.shade700;

      default:
        return Colors.black;
    }
  }
}